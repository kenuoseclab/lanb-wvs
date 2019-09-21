package com.colodoo.manager.task.taskLog.service;

import com.colodoo.framework.base.abs.BaseService;
import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.utils.Contants;
import com.colodoo.manager.task.taskLog.model.TaskLog;
import com.colodoo.manager.task.taskLog.model.TaskLogVO;
import com.colodoo.framework.easyui.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import com.colodoo.manager.task.taskLog.service.mapper.TaskLogSQLMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;

/**
* @author colodoo
* @date 2019-9-20 9:40:03
* @description 
*/
@Service
@Slf4j
public class TaskLogService extends BaseService<TaskLog> {

	@Autowired
	TaskLogSQLMapper sqlMapper;

    /**
    * 新增数据
    *
    * @param model
    * @return
    */
    public int saveTaskLog(TaskLog model) {
        int ret = Contants.CODE_FAILED;
        model.setTaskLogId(uuid());
        model.setCreateTime(new Date());
        // model.setLastDate(new Date());
        try {
            ret = this.insert(model);
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return ret;
    }

    /**
    * 删除数据
    *
    * @param model
    * @return
    */
    public int deleteTaskLog(TaskLog model) {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.delete(model.getTaskLogId());
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return ret;
    }

    /**
    * 更新数据
    *
    * @param model
    * @return
    */
    public int updateTaskLog(TaskLog model) {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.update(model);
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return ret;
    }

    /**
    * 根据id查找单条数据
    *
    * @param model
    * @return
    */
    public TaskLog queryById(TaskLog model) {
        TaskLog taskLog = null;
        try {
            taskLog = this.get(model.getTaskLogId());
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return taskLog;
    }

    /**
    * 查找列表
    *
    * @return
    */
    public List<TaskLog> query(TaskLogVO model) {
        List<TaskLog> list = null;
        list = sqlMapper.getTaskLogList(model);
        return list;
    }

    /**
    * 查找分页列表
    *
    * @param page
    * @return
    */
    public PageInfo<TaskLog> query(Page page, TaskLogVO model) {
        PageInfo<TaskLog> pageInfo;
        List<TaskLog> list = null;
        PageHelper.startPage(page.getPage(), page.getRows());
        list = sqlMapper.getTaskLogList(model);
        pageInfo = new PageInfo<TaskLog>(list);
        return pageInfo;
    }
}
