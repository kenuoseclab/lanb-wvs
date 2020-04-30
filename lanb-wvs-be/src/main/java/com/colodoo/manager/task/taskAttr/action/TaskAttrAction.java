package com.colodoo.manager.task.taskAttr.action;

import com.colodoo.manager.task.taskAttr.model.TaskAttr;
import com.colodoo.manager.task.taskAttr.model.TaskAttrVO;
import com.colodoo.manager.task.taskAttr.service.TaskAttrService;
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
* @date 2019-9-3 15:44:00
* @description
*/
@Controller
@RequestMapping(value = "/taskAttr")
@CrossOrigin
public class TaskAttrAction {

    @Autowired
    TaskAttrService taskAttrService;

	/**
	 * 新增数据
	 * 
	 * @param model
	 * @return
	 */
    @RequestMapping(value = "/save")
    @ResponseBody
    public Map<String, Object> save(@RequestBody TaskAttr model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        int ret = taskAttrService.saveTaskAttr(model);
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
    public Map<String, Object> delete(@RequestBody TaskAttr model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        int ret = taskAttrService.deleteTaskAttr(model);
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
    public Map<String, Object> update(@RequestBody TaskAttr model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        int ret = taskAttrService.updateTaskAttr(model);
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
    public Map<String, Object> queryById(@RequestBody TaskAttr model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        rspMap.put("rows", taskAttrService.queryById(model));
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
    public List<TaskAttr> query(@RequestBody TaskAttrVO model) {
        return taskAttrService.query(model);
    }

	/**
	 * 查找分页列表
	 * 
	 * @param model
	 * @return
	 */
    @RequestMapping(value = "/queryPage")
    @ResponseBody
    public Map<String, Object> queryPage(@RequestBody TaskAttrVO model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        PageInfo<TaskAttr> info = taskAttrService.query(model.getPage(), model);
        rspMap.put(Contants.TABLE_ROWS, info.getList());
        rspMap.put(Contants.TABLE_TOTAL, info.getTotal());
        return rspMap;
    }
}
