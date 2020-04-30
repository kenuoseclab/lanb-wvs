package com.colodoo.manager.task.taskLog.action;

import com.colodoo.framework.base.abs.BaseAction;
import com.colodoo.manager.task.taskLog.model.TaskLog;
import com.colodoo.manager.task.taskLog.model.TaskLogVO;
import com.colodoo.manager.task.taskLog.service.TaskLogService;
import com.colodoo.framework.utils.Contants;
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
* @date 2019-9-20 9:40:04
* @description
*/
@Controller
@RequestMapping(value = "/taskLog")
@CrossOrigin
public class TaskLogAction extends BaseAction {

    @Autowired
    TaskLogService taskLogService;

	/**
	 * 新增数据
	 * 
	 * @param model
	 * @return
	 */
    @RequestMapping(value = "/save")
    @ResponseBody
    public Map<String, Object> save(@RequestBody TaskLog model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        int ret = taskLogService.saveTaskLog(model);
        if(ret > 0) {
            rspMap.put("success", true);
        } else {
            rspMap.put("msg", Contants.MSG_SAVE_FAIL);
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
    public Map<String, Object> delete(@RequestBody TaskLog model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        int ret = taskLogService.deleteTaskLog(model);
        if(ret > 0) {
            rspMap.put("success", true);
        } else {
            rspMap.put("msg", Contants.MSG_DELETE_FAIL);
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
    public Map<String, Object> update(@RequestBody TaskLog model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        int ret = taskLogService.updateTaskLog(model);
        if(ret > 0) {
            rspMap.put("success", true);
        } else {
            rspMap.put("msg", Contants.MSG_UPDATE_FAIL);
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
    public Map<String, Object> queryById(@RequestBody TaskLog model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        rspMap.put("rows", taskLogService.queryById(model));
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
    public List<TaskLog> query(@RequestBody TaskLogVO model) {
        return taskLogService.query(model);
    }

	/**
	 * 查找分页列表
	 * 
	 * @param model
	 * @return
	 */
    @RequestMapping(value = "/queryPage")
    @ResponseBody
    public Map<String, Object> queryPage(@RequestBody TaskLogVO model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        // 设置只能查询本人创建的任务
        model.setCreateUserId(this.getUserId());
        PageInfo<TaskLog> info = taskLogService.query(model.getPage(), model);
        rspMap.put(Contants.TABLE_ROWS, info.getList());
        rspMap.put(Contants.TABLE_TOTAL, info.getTotal());
        return rspMap;
    }
}
