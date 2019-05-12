package com.colodoo.framework.manager.roleMenu.service;

import com.colodoo.framework.base.abs.BaseService;
import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.utils.Contants;
import com.colodoo.framework.manager.roleMenu.model.RoleMenu;
import com.colodoo.framework.manager.roleMenu.model.RoleMenuVO;
import com.colodoo.framework.easyui.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import com.colodoo.framework.manager.roleMenu.service.mapper.RoleMenuSQLMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
* @author colodoo
* @date 2019-4-25 17:07:42
* @description 
*/
@Service
@Slf4j
public class RoleMenuService extends BaseService<RoleMenu> {

	@Autowired
	RoleMenuSQLMapper sqlMapper;

    /**
    * 新增数据
    *
    * @param model
    * @return
    */
    public int saveRoleMenu(RoleMenu model) {
        int ret = Contants.CODE_FAILED;
        model.setRoleMenuId(uuid());
        // model.setCreateDate(new Date());
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
    public int deleteRoleMenu(RoleMenu model) {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.delete(model.getRoleMenuId());
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
    public int updateRoleMenu(RoleMenu model) {
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
    public RoleMenu queryById(RoleMenu model) {
        RoleMenu roleMenu = null;
        try {
            roleMenu = this.get(model.getRoleMenuId());
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return roleMenu;
    }

    /**
    * 查找列表
    *
    * @return
    */
    public List<RoleMenu> query(RoleMenuVO model) {
        List<RoleMenu> list = null;
        try {
            list = sqlMapper.getRoleMenuList(model);
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
    public PageInfo<RoleMenu> query(Page page, RoleMenuVO model) {
        PageInfo<RoleMenu> pageInfo;
        List<RoleMenu> list = null;
        PageHelper.startPage(page.getPage(), page.getRows());
        try {
            list = sqlMapper.getRoleMenuList(model);
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        pageInfo = new PageInfo<RoleMenu>(list);
        return pageInfo;
    }
}
