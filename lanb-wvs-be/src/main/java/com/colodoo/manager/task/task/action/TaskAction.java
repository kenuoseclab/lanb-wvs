package com.colodoo.manager.task.task.action;

import com.colodoo.manager.task.task.model.CreateTaskVO;
import com.colodoo.manager.task.task.model.DashboardVO;
import com.colodoo.manager.task.task.model.Task;
import com.colodoo.manager.task.task.model.TaskVO;
import com.colodoo.manager.task.task.service.TaskService;
import com.colodoo.framework.exception.AppException;
import com.colodoo.framework.utils.Contants;
import com.github.pagehelper.Constant;
import com.github.pagehelper.PageInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;
import java.util.List;

/**
 * @author colodoo
 * @date 2019-4-25 16:16:24
 * @description
 */
@Controller
@RequestMapping(value = "/task")
@CrossOrigin
public class TaskAction {

	@Autowired
	TaskService taskService;

	/**
	 * 新增数据
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/save")
	@ResponseBody
	public Map<String, Object> save(@RequestBody Task model) {
		Map<String, Object> rspMap = new HashMap<String, Object>();
		int ret;
		try {
			taskService.saveTask(model);
			rspMap.put(Contants.MSG_KEY_SUCCESS, true);
			rspMap.put(Contants.MSG_KEY_MSG, Contants.MSG_SAVE_SUCCESS);
		} catch (AppException e) {
			rspMap.put(Contants.MSG_KEY_SUCCESS, false);
			rspMap.put(Contants.MSG_KEY_MSG, Contants.MSG_SAVE_FAIL);
		}

		return rspMap;
	}

	/**
	 * 删除数据
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/delete")
	@ResponseBody
	public Map<String, Object> delete(@RequestBody Task model) {
		Map<String, Object> rspMap = new HashMap<String, Object>();
		try {
			taskService.deleteTask(model);
			rspMap.put(Contants.MSG_KEY_SUCCESS, true);
			rspMap.put(Contants.MSG_KEY_MSG, Contants.MSG_DELETE_SUCCESS);
		} catch (AppException e) {
			rspMap.put(Contants.MSG_KEY_SUCCESS, false);
			rspMap.put(Contants.MSG_KEY_MSG, Contants.MSG_DELETE_FAIL);
		}

		return rspMap;
	}

	/**
	 * 更新数据
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/update")
	@ResponseBody
	public Map<String, Object> update(@RequestBody Task model) {
		Map<String, Object> rspMap = new HashMap<String, Object>();
		try {
			taskService.updateTask(model);
			rspMap.put(Contants.MSG_KEY_SUCCESS, true);
			rspMap.put(Contants.MSG_KEY_MSG, Contants.MSG_UPDATE_SUCCESS);
		} catch (AppException e) {
			rspMap.put(Contants.MSG_KEY_SUCCESS, false);
			rspMap.put(Contants.MSG_KEY_MSG, Contants.MSG_UPDATE_FAIL);
		}

		return rspMap;
	}

	/**
	 * 根据id查找单条数据
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/queryById")
	@ResponseBody
	public Map<String, Object> queryById(@RequestBody Task model) {
		Map<String, Object> rspMap = new HashMap<String, Object>();
		try {
			rspMap.put(Contants.TABLE_ROWS, taskService.queryById(model));
		} catch (AppException e) {
			rspMap.put(Contants.MSG_KEY_SUCCESS, false);
		}
		return rspMap;
	}

	/**
	 * 查找列表
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/query")
	@ResponseBody
	public List<TaskVO> query(@RequestBody TaskVO model) {
		try {
			return taskService.query(model);
		} catch (AppException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 查找分页列表
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/queryPage")
	@ResponseBody
	public Map<String, Object> queryPage(@RequestBody TaskVO model) {
		Map<String, Object> rspMap = new HashMap<String, Object>();
		PageInfo<TaskVO> info;
		try {
			info = taskService.query(model.getPage(), model);
			rspMap.put(Contants.TABLE_ROWS, info.getList());
			rspMap.put(Contants.TABLE_TOTAL, info.getTotal());
		} catch (AppException e) {
			rspMap.put(Contants.MSG_KEY_SUCCESS, false);
		}

		return rspMap;
	}

	/**
	 * 取首页仪表盘数据
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/getDashboardData")
	@ResponseBody
	public List<DashboardVO> getDashboardData(@RequestBody TaskVO model) {
		return taskService.getDashboardData(model);
	}

	/**
	 * 创建任务
	 * 
	 * @param createTaskVO
	 * @return
	 */
	@RequestMapping(value = "/execCreateTask")
	@ResponseBody
	public Map<String, Object> execCreateTask(@RequestBody CreateTaskVO createTaskVO) {
		Map<String, Object> rspMap = new HashMap<String, Object>();
		try {
			taskService.execCreateTask(createTaskVO);
			rspMap.put(Contants.MSG_KEY_SUCCESS, true);
			rspMap.put(Contants.MSG_KEY_MSG, "创建任务成功");
		} catch (AppException e) {
			rspMap.put(Contants.MSG_KEY_SUCCESS, false);
			rspMap.put(Contants.MSG_KEY_MSG, "创建任务失败");
		} catch (Exception e) {
			rspMap.put(Contants.MSG_KEY_SUCCESS, false);
			rspMap.put(Contants.MSG_KEY_MSG, "系统异常,请联系管理员！");
		}

		return rspMap;
	}

	/**
	 * 开始任务
	 *
	 * @param task
	 * @return
	 */
	@RequestMapping(value = "/startTask")
	@ResponseBody
	public Map<String, Object> startTask(@RequestBody Task task) {
		Map<String, Object> rspMap = new HashMap<String, Object>();

		try {
			taskService.startTask(task);
			rspMap.put(Contants.MSG_KEY_SUCCESS, true);
			rspMap.put(Contants.MSG_KEY_MSG, "任务开始成功!");
		} catch (AppException e) {
			rspMap.put(Contants.MSG_KEY_SUCCESS, false);
			rspMap.put(Contants.MSG_KEY_MSG, e.getMsg());
		} catch (Exception e) {
			rspMap.put(Contants.MSG_KEY_SUCCESS, false);
			e.printStackTrace();
			rspMap.put(Contants.MSG_KEY_MSG, "系统异常,请联系管理员！");
		}

		return rspMap;
	}

}
