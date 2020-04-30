package com.colodoo.manager.task.taskLogDet.action;

import com.colodoo.manager.task.taskLogDet.model.TaskLogDet;
import com.colodoo.manager.task.taskLogDet.model.TaskLogDetVO;
import com.colodoo.manager.task.taskLogDet.service.TaskLogDetService;
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
* @date 2020-3-15 22:33:50
* @description
*/
@Controller
@RequestMapping(value = "/taskLogDet")
@CrossOrigin
public class TaskLogDetAction {

    @Autowired
    TaskLogDetService taskLogDetService;

	/**
	 * 新增数据
	 * 
	 * @param model
	 * @return
	 */
    @RequestMapping(value = "/save")
    @ResponseBody
    public Map<String, Object> save(@RequestBody TaskLogDet model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        int ret = taskLogDetService.saveTaskLogDet(model);
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
    public Map<String, Object> delete(@RequestBody TaskLogDet model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        int ret = taskLogDetService.deleteTaskLogDet(model);
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
    public Map<String, Object> update(@RequestBody TaskLogDet model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        int ret = taskLogDetService.updateTaskLogDet(model);
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
    public Map<String, Object> queryById(@RequestBody TaskLogDet model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        rspMap.put("rows", taskLogDetService.queryById(model));
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
    public List<TaskLogDet> query(@RequestBody TaskLogDetVO model) {
        return taskLogDetService.query(model);
    }

	/**
	 * 查找分页列表
	 * 
	 * @param model
	 * @return
	 */
    @RequestMapping(value = "/queryPage")
    @ResponseBody
    public Map<String, Object> queryPage(@RequestBody TaskLogDetVO model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        PageInfo<TaskLogDet> info = taskLogDetService.query(model.getPage(), model);
        rspMap.put(Contants.TABLE_ROWS, info.getList());
        rspMap.put(Contants.TABLE_TOTAL, info.getTotal());
        return rspMap;
    }
}
