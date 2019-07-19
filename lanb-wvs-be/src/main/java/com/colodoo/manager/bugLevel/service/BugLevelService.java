package com.colodoo.manager.bugLevel.service;

import com.colodoo.framework.base.abs.BaseService;
import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.utils.Contants;
import com.colodoo.manager.bugLevel.model.BugLevel;
import com.colodoo.manager.bugLevel.model.BugLevelVO;
import com.colodoo.framework.easyui.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import lombok.extern.slf4j.Slf4j;

import org.springframework.stereotype.Service;

import com.colodoo.manager.bugLevel.service.mapper.BugLevelSQLMapper;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;

/**
* @author colodoo
* @date 2019-4-14 20:49:28
* @description 
*/
@Service
@Slf4j
public class BugLevelService extends BaseService<BugLevel> {

	@Autowired
	BugLevelSQLMapper sqlMapper;

    /**
    * 新增数据
    *
    * @param model
    * @return
    */
    public int saveBugLevel(BugLevel model) {
        int ret = Contants.CODE_FAILED;
        model.setBugLevelId(uuid());
        Date now = new Date();
    	// 创建时间,更新时间,创建人,更新人
 		model.setCreateTime(now);
 		model.setUpdateTime(now);
 		String userId = this.getSessionObject().getUser().getUserId();
 		model.setCreateUserId(userId);
 		model.setUpdateUserId(userId);
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
    public int deleteBugLevel(BugLevel model) {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.delete(model.getBugLevelId());
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
    public int updateBugLevel(BugLevel model) {
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
    public BugLevel queryById(BugLevel model) {
        BugLevel bugLevel = null;
        try {
            bugLevel = this.get(model.getBugLevelId());
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return bugLevel;
    }

    /**
    * 查找列表
    *
    * @return
    */
    public List<BugLevel> query(BugLevelVO model) {
        List<BugLevel> list = null;
        try {
            list = sqlMapper.getBugLevelList(model);
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
    public PageInfo<BugLevel> query(Page page, BugLevelVO model) {
        PageInfo<BugLevel> pageInfo;
        List<BugLevel> list = null;
        PageHelper.startPage(page.getPage(), page.getRows());
        try {
            list = sqlMapper.getBugLevelList(model);
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        pageInfo = new PageInfo<BugLevel>(list);
        return pageInfo;
    }
}
