package com.colodoo.manager.bug.service.mapper;

import java.util.List;

import com.colodoo.framework.exception.DAOException;
import com.colodoo.manager.bug.model.BugVO;

/**
 * @author colodoo
 * @date 2019-4-14 19:29:44
 * @description 
 */
public interface BugSQLMapper {
	
	public List<BugVO> getBugList(BugVO model) throws DAOException;

}
