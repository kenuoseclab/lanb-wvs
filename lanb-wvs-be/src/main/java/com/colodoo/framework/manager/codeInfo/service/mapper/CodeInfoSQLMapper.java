package com.colodoo.framework.manager.codeInfo.service.mapper;

import java.util.List;

import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.manager.codeInfo.model.CodeInfoVO;
import com.colodoo.framework.manager.codeInfo.model.CodeInfo;

/**
 * @author colodoo
 * @date 2019-4-22 15:08:23
 * @description 
 */
public interface CodeInfoSQLMapper {
	
	public List<CodeInfo> getCodeInfoList(CodeInfoVO model) throws DAOException;

}
