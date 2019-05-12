package com.colodoo.manager.task.taskAttr.service.mapper;

import java.util.List;

import com.colodoo.framework.exception.DAOException;
import com.colodoo.manager.task.taskAttr.model.TaskAttrVO;
import com.colodoo.manager.task.taskAttr.model.TaskAttr;

/**
 * @author colodoo
 * @date 2019-4-25 16:16:53
 * @description 
 */
public interface TaskAttrSQLMapper {
	
	public List<TaskAttr> getTaskAttrList(TaskAttrVO model) throws DAOException;

}
