package com.colodoo.manager.task.service;

import com.colodoo.framework.base.abs.BaseService;
import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.utils.Contants;
import com.colodoo.manager.task.model.Task;
import com.colodoo.manager.task.model.TaskVO;
import com.colodoo.framework.easyui.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import com.colodoo.manager.task.service.mapper.TaskSQLMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
* @author colodoo
* @date 2019-4-14 18:40:18
* @description 
*/
@Service
@Slf4j
public class TaskService extends BaseService<Task> {

	@Autowired
	TaskSQLMapper sqlMapper;

    /**
    * 新增数据
    *
    * @param model
    * @return
    */
    public int saveTask(Task model) {
        int ret = Contants.CODE_FAILED;
        model.setTaskId(uuid());
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
    public int deleteTask(Task model) {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.delete(model.getTaskId());
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
    public int updateTask(Task model) {
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
    public Task queryById(Task model) {
        Task task = null;
        try {
            task = this.get(model.getTaskId());
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return task;
    }

    /**
    * 查找列表
    *
    * @return
    */
    public List<Task> query(TaskVO model) {
        List<Task> list = null;
        try {
            list = sqlMapper.getTaskList(model);
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
    public PageInfo<Task> query(Page page, TaskVO model) {
        PageInfo<Task> pageInfo;
        List<Task> list = null;
        PageHelper.startPage(page.getPage(), page.getRows());
        try {
            list = sqlMapper.getTaskList(model);
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        pageInfo = new PageInfo<Task>(list);
        return pageInfo;
    }
}
