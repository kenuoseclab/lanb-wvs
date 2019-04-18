package com.colodoo.manager.bugLevel.service.mapper;

import java.util.List;

import com.colodoo.framework.exception.DAOException;
import com.colodoo.manager.bugLevel.model.BugLevelVO;
import com.colodoo.manager.bugLevel.model.BugLevel;

/**
 * @author colodoo
 * @date 2019-4-14 20:49:28
 * @description 
 */
public interface BugLevelSQLMapper {
	
	public List<BugLevel> getBugLevelList(BugLevelVO model) throws DAOException;

}
