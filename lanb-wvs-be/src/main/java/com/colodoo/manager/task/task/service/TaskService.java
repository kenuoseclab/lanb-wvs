package com.colodoo.manager.task.task.service;

import com.colodoo.framework.base.abs.BaseService;
import com.colodoo.framework.common.SessionObject;
import com.colodoo.framework.exception.AppException;
import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.quartz.JobClass;
import com.colodoo.framework.utils.Contants;
import com.colodoo.manager.task.task.model.CreateTaskVO;
import com.colodoo.manager.task.task.model.DashboardVO;
import com.colodoo.manager.task.task.model.Task;
import com.colodoo.manager.task.task.model.TaskVO;
import com.colodoo.framework.easyui.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import lombok.extern.slf4j.Slf4j;

import org.springframework.stereotype.Service;

import com.colodoo.manager.task.task.service.mapper.TaskSQLMapper;
import com.colodoo.manager.task.taskAttr.model.TaskAttr;
import com.colodoo.manager.task.taskAttr.model.TaskAttrExample;
import com.colodoo.manager.task.taskAttr.service.TaskAttrMapper;
import com.colodoo.manager.task.taskAttr.service.TaskAttrService;

import org.apache.tomcat.jni.Thread;
import org.quartz.CronScheduleBuilder;
import org.quartz.CronTrigger;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.JobKey;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;
import org.quartz.impl.matchers.GroupMatcher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.quartz.JobDetailFactoryBean;
import org.springframework.scheduling.quartz.QuartzJobBean;
import org.springframework.scheduling.quartz.SchedulerFactoryBean;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * @author colodoo
 * @date 2019-4-25 16:16:24
 * @description
 */
@Service
@Slf4j
public class TaskService extends BaseService<Task> {

    @Autowired
    TaskSQLMapper sqlMapper;

    @Autowired
    private SchedulerFactoryBean schedulerFactoryBean;

    @Autowired
    TaskAttrService taskAttrService;

    @Autowired
    TaskAttrMapper taskAttrMapper;

    /**
     * 新增数据
     *
     * @param model
     * @return
     * @throws AppException
     */
    public int saveTask(Task model) throws AppException {
        int ret = Contants.CODE_FAILED;
        model.setTaskId(uuid());
        Date now = new Date();
        // 创建时间,更新时间,创建人,更新人
        model.setCreateTime(now);
        model.setUpdateTime(now);
        String userId = this.getSessionObject().getUser().getUserId();
        model.setCreateUserId(userId);
        model.setUpdateUserId(userId);
        try {
            ret = this.insert(model);
        } catch (DAOException e) {
            log.error(e.getMsg());
            throw new AppException(e.getMsg());
        }
        return ret;
    }

    /**
     * 删除数据
     *
     * @param model
     * @return
     * @throws AppException
     */
    public int deleteTask(Task model) throws AppException {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.delete(model.getTaskId());
            // 删除关联的任务属性
            TaskAttrExample taskAttrExample = new TaskAttrExample();
            taskAttrExample.createCriteria().andTaskIdEqualTo(model.getTaskId());
            taskAttrMapper.deleteByExample(taskAttrExample);
        } catch (DAOException e) {
            log.error(e.getMsg());
            throw new AppException(e.getMsg());
        }
        return ret;
    }

    /**
     * 更新数据
     *
     * @param model
     * @return
     * @throws AppException
     */
    public int updateTask(Task model) throws AppException {
        int ret = Contants.CODE_FAILED;
        try {
            Date now = new Date();
            model.setUpdateTime(now);
            String userId = this.getSessionObject().getUser().getUserId();
            model.setUpdateUserId(userId);
            ret = this.update(model);
        } catch (DAOException e) {
            log.error(e.getMsg());
            throw new AppException(e.getMsg());
        }
        return ret;
    }

    /**
     * 根据id查找单条数据
     *
     * @param model
     * @return
     * @throws AppException
     */
    public Task queryById(Task model) throws AppException {
        Task task = null;
        try {
            task = this.get(model.getTaskId());
        } catch (DAOException e) {
            log.error(e.getMsg());
            throw new AppException(e.getMsg());
        }
        return task;
    }

    /**
     * 查找列表
     *
     * @return
     * @throws AppException
     */
    public List<TaskVO> query(TaskVO model) throws AppException {
        List<TaskVO> list = null;
        try {
            list = sqlMapper.getTaskList(model);
        } catch (DAOException e) {
            log.error(e.getMsg());
            throw new AppException(e.getMsg());
        }
        return list;
    }

    /**
     * 查找分页列表
     *
     * @param page
     * @return
     * @throws AppException
     */
    @SuppressWarnings("unchecked")
    public PageInfo<TaskVO> query(Page page, TaskVO model) throws AppException {

        PageInfo<TaskVO> pageInfo;
        List<TaskVO> list = null;
        if (page.getRows() > 0) {
            PageHelper.startPage(page.getPage(), page.getRows());
        }
        try {
            // 测试查询任务
            Scheduler scheduler = schedulerFactoryBean.getScheduler();

            // 测试,新建一个任务
//			CronTrigger trigger = null;
//			JobDetail jobDetail = JobBuilder.newJob(JobClass.class).withIdentity("DEFAULT", "DEFAULT").build();
//			// jobDetail.getJobDataMap().put("scheduleJob", scheduleJob);
//			CronScheduleBuilder scheduleBuilder = CronScheduleBuilder.cronSchedule("0/5 * * * * ?");
//			trigger = TriggerBuilder.newTrigger().withIdentity("DEFAULT", "DEFAULT").withSchedule(scheduleBuilder).build();
//			scheduler.scheduleJob(jobDetail, trigger);

            for (String groupName : scheduler.getJobGroupNames()) {
                for (JobKey jobKey : scheduler.getJobKeys(GroupMatcher.jobGroupEquals(groupName))) {
                    String jobName = jobKey.getName();
                    String jobGroup = jobKey.getGroup();
                    // get job's trigger
                    List<Trigger> triggers = (List<Trigger>) scheduler.getTriggersOfJob(jobKey);
                    Date nextFireTime = triggers.get(0).getNextFireTime();
                    System.out.println("[jobName] : " + jobName + " [groupName] : " + jobGroup + " - " + nextFireTime);
                }
            }

            // 查询数据库
            list = sqlMapper.getTaskList(model);
        } catch (DAOException e) {
            log.error(e.getMsg());
            throw new AppException(e.getMsg());
        } catch (SchedulerException e) {
            log.error(e.getMessage());
            throw new AppException(e.getMessage());
        }
        pageInfo = new PageInfo<TaskVO>(list);
        return pageInfo;
    }

    /**
     * 取首页仪表盘数据
     *
     * @return
     */
    public List<DashboardVO> getDashboardData(TaskVO model) {
        return sqlMapper.getDashboardData(model);
    }

    /**
     * 创建任务
     *
     * @param createTaskVO
     * @throws AppException
     */
    public void execCreateTask(CreateTaskVO createTaskVO) throws AppException {

        // 初始化信息
        Date date = new Date();
        String userId = null;
        String taskId = this.uuid();
        SessionObject sessionObject = this.getSessionObject();
        if (sessionObject != null) {
            userId = sessionObject.getUser().getUserId();
        } else {
            throw new AppException("用户未登陆!");
        }

        // 周期
        TaskAttr cycleTaskAttr = new TaskAttr(this.uuid(), taskId, "cycle", createTaskVO.getCycle(), date, userId, date,
                userId, null);
        taskAttrService.saveTaskAttr(cycleTaskAttr);
        // 关联资产
        TaskAttr assetsTaskAttr = new TaskAttr(this.uuid(), taskId, "assets", createTaskVO.getAssets(), date, userId,
                date, userId, null);
        taskAttrService.saveTaskAttr(assetsTaskAttr);
        // 关联漏洞
        TaskAttr bugsTaskAttr = new TaskAttr(this.uuid(), taskId, "bugs", createTaskVO.getAssets(), date, userId, date,
                userId, null);
        taskAttrService.saveTaskAttr(bugsTaskAttr);
        // 扫描方式
        TaskAttr scanTypeTaskAttr = new TaskAttr(this.uuid(), taskId, "scan_type", createTaskVO.getAssets(), date,
                userId, date, userId, null);
        taskAttrService.saveTaskAttr(scanTypeTaskAttr);
        // 报告模板
        TaskAttr reportTaskAttr = new TaskAttr(this.uuid(), taskId, "report_template", createTaskVO.getReportTemplate(),
                date, userId, date, userId, null);
        taskAttrService.saveTaskAttr(reportTaskAttr);

        // 初始化任务信息
        Task task = new Task(taskId, createTaskVO.getTaskName(), createTaskVO.getDesc(), "1", date, userId, date,
                userId, createTaskVO.getRemark());
        // 保存任务
        try {
            this.insert(task);
        } catch (DAOException e) {
            throw new AppException("保存任务出错!");
        }

    }

}
