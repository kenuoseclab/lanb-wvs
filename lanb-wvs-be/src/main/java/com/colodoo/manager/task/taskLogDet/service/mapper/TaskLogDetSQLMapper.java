package com.colodoo.manager.task.taskLogDet.service.mapper;

import java.util.List;

import com.colodoo.manager.task.taskLogDet.model.TaskLogDetVO;
import com.colodoo.manager.task.taskLogDet.model.TaskLogDet;

/**
 * @author colodoo
 * @date 2020-3-15 22:33:50
 * @description 
 */
public interface TaskLogDetSQLMapper {
	
	public List<TaskLogDet> getTaskLogDetList(TaskLogDetVO model);

}
