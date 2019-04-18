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
    public List<Bug> query(BugVO model) {
        List<Bug> list = null;
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
    public PageInfo<Bug> query(Page page, BugVO model) {
        PageInfo<Bug> pageInfo;
        List<Bug> list = null;
        PageHelper.startPage(page.getPage(), page.getRows());
        try {
            list = sqlMapper.getBugList(model);
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        pageInfo = new PageInfo<Bug>(list);
        return pageInfo;
    }
}
