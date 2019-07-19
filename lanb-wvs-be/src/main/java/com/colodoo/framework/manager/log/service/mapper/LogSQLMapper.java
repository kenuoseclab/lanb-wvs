package com.colodoo.framework.manager.log.service.mapper;

import java.util.List;

import com.colodoo.framework.manager.log.model.LogVO;
import com.colodoo.framework.manager.log.model.Log;

/**
 * @author colodoo
 * @date 2019-7-16 16:04:15
 * @description 
 */
public interface LogSQLMapper {
	
	public List<Log> getLogList(LogVO model);

}
