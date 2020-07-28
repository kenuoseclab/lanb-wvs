package com.colodoo.manager.script.service;

import com.colodoo.framework.base.abs.BaseService;
import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.utils.Contants;
import com.colodoo.manager.script.model.Script;
import com.colodoo.manager.script.model.ScriptVO;
import com.colodoo.framework.easyui.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import com.colodoo.manager.script.service.mapper.ScriptSQLMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;

/**
* @author colodoo
* @date 2020-7-26 17:17:08
* @description 
*/
@Service
@Slf4j
public class ScriptService extends BaseService<Script> {

	@Autowired
	ScriptSQLMapper sqlMapper;

    /**
    * 新增数据
    *
    * @param model
    * @return
    */
    public int saveScript(Script model) {
        int ret = Contants.CODE_FAILED;
        model.setScriptId(uuid());
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
    public int deleteScript(Script model) {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.delete(model.getScriptId());
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
    public int updateScript(Script model) {
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
    public Script queryById(Script model) {
        Script script = null;
        try {
            script = this.get(model.getScriptId());
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return script;
    }

    /**
    * 查找列表
    *
    * @return
    */
    public List<Script> query(ScriptVO model) {
        List<Script> list = null;
        list = sqlMapper.getScriptList(model);
        return list;
    }

    /**
    * 查找分页列表
    *
    * @param page
    * @return
    */
    public PageInfo<Script> query(Page page, ScriptVO model) {
        PageInfo<Script> pageInfo;
        List<Script> list = null;
        PageHelper.startPage(page.getPage(), page.getRows());
        list = sqlMapper.getScriptList(model);
        pageInfo = new PageInfo<Script>(list);
        return pageInfo;
    }
}
