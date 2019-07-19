package com.colodoo.manager.bug.service;

import com.colodoo.framework.base.abs.BaseService;
import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.utils.Contants;
import com.colodoo.manager.bug.model.Bug;
import com.colodoo.manager.bug.model.BugVO;
import com.colodoo.framework.easyui.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import lombok.extern.slf4j.Slf4j;

import org.springframework.stereotype.Service;

import com.colodoo.manager.bug.service.mapper.BugSQLMapper;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;

/**
* @author colodoo
* @date 2019-4-14 19:29:44
* @description 
*/
@Service
@Slf4j
public class BugService extends BaseService<Bug> {

	@Autowired
	BugSQLMapper sqlMapper;

    /**
    * 新增数据
    *
    * @param model
    * @return
    */
    public int saveBug(Bug model) {
        int ret = Contants.CODE_FAILED;
        model.setBugId(uuid());
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
    public int deleteBug(Bug model) {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.delete(model.getBugId());
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
    public int updateBug(Bug model) {
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
    public Bug queryById(Bug model) {
        Bug bug = null;
        try {
            bug = this.get(model.getBugId());
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return bug;
    }

    /**
    * 查找列表
    *
    * @return
    */
    public List<BugVO> query(BugVO model) {
        List<BugVO> list = null;
        try {
            list = sqlMapper.getBugList(model);
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
    public PageInfo<BugVO> query(Page page, BugVO model) {
        PageInfo<BugVO> pageInfo;
        List<BugVO> list = null;
        PageHelper.startPage(page.getPage(), page.getRows());
        try {
            list = sqlMapper.getBugList(model);
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        pageInfo = new PageInfo<BugVO>(list);
        return pageInfo;
    }
}
