package com.colodoo.manager.task.taskAttr.service;

import com.colodoo.framework.base.abs.BaseService;
import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.utils.Contants;
import com.colodoo.manager.task.taskAttr.model.TaskAttr;
import com.colodoo.manager.task.taskAttr.model.TaskAttrVO;
import com.colodoo.framework.easyui.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import com.colodoo.manager.task.taskAttr.service.mapper.TaskAttrSQLMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
* @author colodoo
* @date 2019-4-25 16:16:53
* @description 
*/
@Service
@Slf4j
public class TaskAttrService extends BaseService<TaskAttr> {

	@Autowired
	TaskAttrSQLMapper sqlMapper;

    /**
    * 新增数据
    *
    * @param model
    * @return
    */
    public int saveTaskAttr(TaskAttr model) {
        int ret = Contants.CODE_FAILED;
        model.setTaskAttrId(uuid());
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
    public int deleteTaskAttr(TaskAttr model) {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.delete(model.getTaskAttrId());
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
    public int updateTaskAttr(TaskAttr model) {
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
    public TaskAttr queryById(TaskAttr model) {
        TaskAttr taskAttr = null;
        try {
            taskAttr = this.get(model.getTaskAttrId());
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return taskAttr;
    }

    /**
    * 查找列表
    *
    * @return
    */
    public List<TaskAttr> query(TaskAttrVO model) {
        List<TaskAttr> list = null;
        try {
            list = sqlMapper.getTaskAttrList(model);
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
    public PageInfo<TaskAttr> query(Page page, TaskAttrVO model) {
        PageInfo<TaskAttr> pageInfo;
        List<TaskAttr> list = null;
        PageHelper.startPage(page.getPage(), page.getRows());
        try {
            list = sqlMapper.getTaskAttrList(model);
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        pageInfo = new PageInfo<TaskAttr>(list);
        return pageInfo;
    }
}
