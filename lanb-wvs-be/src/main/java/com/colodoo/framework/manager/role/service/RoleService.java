package com.colodoo.framework.manager.role.service;

import com.colodoo.framework.base.abs.BaseService;
import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.utils.Contants;
import com.colodoo.framework.manager.role.model.Role;
import com.colodoo.framework.manager.role.model.RoleVO;
import com.colodoo.framework.easyui.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import com.colodoo.framework.manager.role.service.mapper.RoleSQLMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;

/**
* @author colodoo
* @date 2019-7-1 15:50:08
* @description 
*/
@Service
@Slf4j
public class RoleService extends BaseService<Role> {

	@Autowired
	RoleSQLMapper sqlMapper;

    /**
    * 新增数据
    *
    * @param model
    * @return
    */
    public int saveRole(Role model) {
        int ret = Contants.CODE_FAILED;
        // model.setRoleId(uuid());
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
    public int deleteRole(Role model) {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.delete(model.getRoleId());
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
    public int updateRole(Role model) {
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
    public Role queryById(Role model) {
        Role role = null;
        try {
            role = this.get(model.getRoleId());
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return role;
    }

    /**
    * 查找列表
    *
    * @return
    */
    public List<Role> query(RoleVO model) {
        List<Role> list = null;
        list = sqlMapper.getRoleList(model);
        return list;
    }

    /**
    * 查找分页列表
    *
    * @param page
    * @return
    */
    public PageInfo<Role> query(Page page, RoleVO model) {
        PageInfo<Role> pageInfo;
        List<Role> list = null;
        PageHelper.startPage(page.getPage(), page.getRows());
        list = sqlMapper.getRoleList(model);
        pageInfo = new PageInfo<Role>(list);
        return pageInfo;
    }
}
