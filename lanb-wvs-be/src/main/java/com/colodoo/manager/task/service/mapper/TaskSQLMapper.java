package com.colodoo.manager.task.service.mapper;

import java.util.List;

import com.colodoo.framework.exception.DAOException;
import com.colodoo.manager.task.model.TaskVO;
import com.colodoo.manager.task.model.Task;

/**
 * @author colodoo
 * @date 2019-4-14 18:40:18
 * @description 
 */
public interface TaskSQLMapper {
	
	public List<Task> getTaskList(TaskVO model) throws DAOException;

}
