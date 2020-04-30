package com.colodoo.manager.needs.service;

import com.colodoo.framework.base.abs.BaseService;
import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.utils.Contants;
import com.colodoo.manager.needs.model.Needs;
import com.colodoo.manager.needs.model.NeedsVO;
import com.colodoo.framework.easyui.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import com.colodoo.manager.needs.service.mapper.NeedsSQLMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
* @author colodoo
* @date 2020-3-15 18:09:40
* @description 
*/
@Service
@Slf4j
public class NeedsService extends BaseService<Needs> {

	@Autowired
	NeedsSQLMapper sqlMapper;

    /**
    * 新增数据
    *
    * @param model
    * @return
    */
    public int saveNeeds(Needs model) {
        int ret = Contants.CODE_FAILED;
        model.setNeedsId(uuid());
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
    public int deleteNeeds(Needs model) {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.delete(model.getNeedsId());
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
    public int updateNeeds(Needs model) {
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
    public Needs queryById(Needs model) {
        Needs needs = null;
        try {
            needs = this.get(model.getNeedsId());
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return needs;
    }

    /**
    * 查找列表
    *
    * @return
    */
    public List<Needs> query(NeedsVO model) {
        List<Needs> list = null;
        list = sqlMapper.getNeedsList(model);
        return list;
    }

    /**
    * 查找分页列表
    *
    * @param page
    * @return
    */
    public PageInfo<Needs> query(Page page, NeedsVO model) {
        PageInfo<Needs> pageInfo;
        List<Needs> list = null;
        PageHelper.startPage(page.getPage(), page.getRows());
        list = sqlMapper.getNeedsList(model);
        pageInfo = new PageInfo<Needs>(list);
        return pageInfo;
    }
}
