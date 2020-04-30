package com.colodoo.manager.task.taskLogDet.service;

import com.colodoo.framework.base.abs.BaseService;
import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.utils.Contants;
import com.colodoo.manager.task.taskLogDet.model.TaskLogDet;
import com.colodoo.manager.task.taskLogDet.model.TaskLogDetVO;
import com.colodoo.framework.easyui.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import com.colodoo.manager.task.taskLogDet.service.mapper.TaskLogDetSQLMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;

/**
* @author colodoo
* @date 2020-3-15 22:33:50
* @description 
*/
@Service
@Slf4j
public class TaskLogDetService extends BaseService<TaskLogDet> {

	@Autowired
	TaskLogDetSQLMapper sqlMapper;

    /**
    * 新增数据
    *
    * @param model
    * @return
    */
    public int saveTaskLogDet(TaskLogDet model) {
        int ret = Contants.CODE_FAILED;
        model.setTaskLogDetId(uuid());
        model.setCreateTime(new Date());
        model.setUpdateTime(new Date());
        // model.setCreateUserId(this.getSessionObject().getUser().getUserId());
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
    public int deleteTaskLogDet(TaskLogDet model) {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.delete(model.getTaskLogDetId());
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
    public int updateTaskLogDet(TaskLogDet model) {
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
    public TaskLogDet queryById(TaskLogDet model) {
        TaskLogDet taskLogDet = null;
        try {
            taskLogDet = this.get(model.getTaskLogDetId());
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return taskLogDet;
    }

    /**
    * 查找列表
    *
    * @return
    */
    public List<TaskLogDet> query(TaskLogDetVO model) {
        List<TaskLogDet> list = null;
        list = sqlMapper.getTaskLogDetList(model);
        return list;
    }

    /**
    * 查找分页列表
    *
    * @param page
    * @return
    */
    public PageInfo<TaskLogDet> query(Page page, TaskLogDetVO model) {
        PageInfo<TaskLogDet> pageInfo;
        List<TaskLogDet> list = null;
        PageHelper.startPage(page.getPage(), page.getRows());
        list = sqlMapper.getTaskLogDetList(model);
        pageInfo = new PageInfo<TaskLogDet>(list);
        return pageInfo;
    }
}
