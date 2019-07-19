package com.colodoo.framework.manager.log.service;

import com.colodoo.framework.base.abs.BaseService;
import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.utils.Contants;
import com.colodoo.framework.manager.log.model.Log;
import com.colodoo.framework.manager.log.model.LogVO;
import com.colodoo.framework.easyui.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import com.colodoo.framework.manager.log.service.mapper.LogSQLMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
* @author colodoo
* @date 2019-7-16 16:04:15
* @description 
*/
@Service
@Slf4j
public class LogService extends BaseService<Log> {

	@Autowired
	LogSQLMapper sqlMapper;

    /**
    * 新增数据
    *
    * @param model
    * @return
    */
    public int saveLog(Log model) {
        int ret = Contants.CODE_FAILED;
        model.setLogId(uuid());
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
    public int deleteLog(Log model) {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.delete(model.getLogId());
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
    public int updateLog(Log model) {
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
    public Log queryById(Log model) {
        Log logTemp = null;
        try {
        	logTemp = this.get(model.getLogId());
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return logTemp;
    }

    /**
    * 查找列表
    *
    * @return
    */
    public List<Log> query(LogVO model) {
        List<Log> list = null;
        list = sqlMapper.getLogList(model);
        return list;
    }

    /**
    * 查找分页列表
    *
    * @param page
    * @return
    */
    public PageInfo<Log> query(Page page, LogVO model) {
        PageInfo<Log> pageInfo;
        List<Log> list = null;
        PageHelper.startPage(page.getPage(), page.getRows());
        list = sqlMapper.getLogList(model);
        pageInfo = new PageInfo<Log>(list);
        return pageInfo;
    }
}
