package com.colodoo.framework.manager.roleUser.action;

import com.colodoo.framework.manager.roleUser.model.RoleUser;
import com.colodoo.framework.manager.roleUser.model.RoleUserVO;
import com.colodoo.framework.manager.roleUser.service.RoleUserService;
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
* @date 2020-5-31 20:43:36
* @description
*/
@Controller
@RequestMapping(value = "/roleUser")
@CrossOrigin
public class RoleUserAction {

    @Autowired
    RoleUserService roleUserService;

	/**
	 * 新增数据
	 * 
	 * @param model
	 * @return
	 */
    @RequestMapping(value = "/save")
    @ResponseBody
    public Map<String, Object> save(@RequestBody RoleUser model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        int ret = roleUserService.saveRoleUser(model);
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
    public Map<String, Object> delete(@RequestBody RoleUser model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        int ret = roleUserService.deleteRoleUser(model);
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
    public Map<String, Object> update(@RequestBody RoleUser model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        int ret = roleUserService.updateRoleUser(model);
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
    public Map<String, Object> queryById(@RequestBody RoleUser model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        rspMap.put("rows", roleUserService.queryById(model));
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
    public List<RoleUser> query(@RequestBody RoleUserVO model) {
        return roleUserService.query(model);
    }

	/**
	 * 查找分页列表
	 * 
	 * @param model
	 * @return
	 */
    @RequestMapping(value = "/queryPage")
    @ResponseBody
    public Map<String, Object> queryPage(@RequestBody RoleUserVO model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        PageInfo<RoleUser> info = roleUserService.query(model.getPage(), model);
        rspMap.put(Contants.TABLE_ROWS, info.getList());
        rspMap.put(Contants.TABLE_TOTAL, info.getTotal());
        return rspMap;
    }
}
