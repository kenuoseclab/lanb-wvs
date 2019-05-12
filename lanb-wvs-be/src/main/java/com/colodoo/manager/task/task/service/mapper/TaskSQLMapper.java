package com.colodoo.manager.task.task.service.mapper;

import java.util.List;

import com.colodoo.framework.exception.DAOException;
import com.colodoo.manager.task.task.model.TaskVO;
import com.colodoo.manager.task.task.model.Task;

/**
 * @author colodoo
 * @date 2019-4-25 16:16:24
 * @description 
 */
public interface TaskSQLMapper {
	
	public List<Task> getTaskList(TaskVO model) throws DAOException;

}
