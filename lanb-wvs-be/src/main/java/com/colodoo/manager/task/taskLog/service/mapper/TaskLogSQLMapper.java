package com.colodoo.manager.task.taskLog.service.mapper;

import java.util.List;

import com.colodoo.manager.task.taskLog.model.TaskLogVO;
import com.colodoo.manager.task.taskLog.model.TaskLog;

/**
 * @author colodoo
 * @date 2019-9-20 9:40:03
 * @description 
 */
public interface TaskLogSQLMapper {
	
	public List<TaskLog> getTaskLogList(TaskLogVO model);

}
