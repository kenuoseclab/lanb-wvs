package com.colodoo.manager.task.taskAttr.service.mapper;

import java.util.List;

import com.colodoo.manager.task.taskAttr.model.TaskAttrVO;
import com.colodoo.manager.task.taskAttr.model.TaskAttr;

/**
 * @author colodoo
 * @date 2019-9-3 15:44:00
 * @description 
 */
public interface TaskAttrSQLMapper {
	
	public List<TaskAttr> getTaskAttrList(TaskAttrVO model);

}
