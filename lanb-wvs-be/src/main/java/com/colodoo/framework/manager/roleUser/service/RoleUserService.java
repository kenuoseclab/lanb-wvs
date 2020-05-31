package com.colodoo.framework.manager.roleUser.service;

import com.colodoo.framework.base.abs.BaseService;
import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.utils.Contants;
import com.colodoo.framework.manager.roleUser.model.RoleUser;
import com.colodoo.framework.manager.roleUser.model.RoleUserVO;
import com.colodoo.framework.easyui.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import com.colodoo.framework.manager.roleUser.service.mapper.RoleUserSQLMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
* @author colodoo
* @date 2020-5-31 20:43:36
* @description 
*/
@Service
@Slf4j
public class RoleUserService extends BaseService<RoleUser> {

	@Autowired
	RoleUserSQLMapper sqlMapper;

    /**
    * 新增数据
    *
    * @param model
    * @return
    */
    public int saveRoleUser(RoleUser model) {
        int ret = Contants.CODE_FAILED;
        model.setRoleUserId(uuid());
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
    public int deleteRoleUser(RoleUser model) {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.delete(model.getRoleUserId());
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
    public int updateRoleUser(RoleUser model) {
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
    public RoleUser queryById(RoleUser model) {
        RoleUser roleUser = null;
        try {
            roleUser = this.get(model.getRoleUserId());
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return roleUser;
    }

    /**
    * 查找列表
    *
    * @return
    */
    public List<RoleUser> query(RoleUserVO model) {
        List<RoleUser> list = null;
        list = sqlMapper.getRoleUserList(model);
        return list;
    }

    /**
    * 查找分页列表
    *
    * @param page
    * @return
    */
    public PageInfo<RoleUser> query(Page page, RoleUserVO model) {
        PageInfo<RoleUser> pageInfo;
        List<RoleUser> list = null;
        PageHelper.startPage(page.getPage(), page.getRows());
        list = sqlMapper.getRoleUserList(model);
        pageInfo = new PageInfo<RoleUser>(list);
        return pageInfo;
    }
}
