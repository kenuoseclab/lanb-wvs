package com.colodoo.manager.task.task.service;

import com.colodoo.framework.base.abs.BaseService;
import com.colodoo.framework.exception.DAOException;
// import com.colodoo.framework.mq.TaskSender;
import com.colodoo.framework.utils.Contants;
import com.colodoo.manager.task.task.model.DashboardVO;
import com.colodoo.manager.task.task.model.Task;
import com.colodoo.manager.task.task.model.TaskVO;
import com.colodoo.framework.easyui.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import lombok.extern.slf4j.Slf4j;

import org.springframework.stereotype.Service;

import com.colodoo.manager.task.task.service.mapper.TaskSQLMapper;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;

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

	// @Autowired
	// TaskSender taskSender;
	/**
	 * 新增数据
	 *
	 * @param model
	 * @return
	 */
	public int saveTask(Task model) {
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
			// 把任务加入到队列中
			// taskSender.sendMsg(model);
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
	public int deleteTask(Task model) {
		int ret = Contants.CODE_FAILED;
		try {
			ret = this.delete(model.getTaskId());
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
	public int updateTask(Task model) {
		int ret = Contants.CODE_FAILED;
		try {
			Date now = new Date();
			model.setUpdateTime(now);
			String userId = this.getSessionObject().getUser().getUserId();
			model.setUpdateUserId(userId);
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
	public Task queryById(Task model) {
		Task task = null;
		try {
			task = this.get(model.getTaskId());
		} catch (DAOException e) {
			log.error(e.getMsg());
		}
		return task;
	}

	/**
	 * 查找列表
	 *
	 * @return
	 */
	public List<TaskVO> query(TaskVO model) {
		List<TaskVO> list = null;
		try {
			list = sqlMapper.getTaskList(model);
		} catch (DAOException e) {
			log.error(e.getMsg());
		}
		return list;
	}

	/**
	 * 查找分页列表
	 *
	 * @param page
	 * @return
	 */
	public PageInfo<TaskVO> query(Page page, TaskVO model) {
		PageInfo<TaskVO> pageInfo;
		List<TaskVO> list = null;
		PageHelper.startPage(page.getPage(), page.getRows());
		try {
			list = sqlMapper.getTaskList(model);
		} catch (DAOException e) {
			log.error(e.getMsg());
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
}
