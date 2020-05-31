package com.colodoo.framework.manager.roleUser.service.mapper;

import java.util.List;

import com.colodoo.framework.manager.roleUser.model.RoleUserVO;
import com.colodoo.framework.manager.roleUser.model.RoleUser;

/**
 * @author colodoo
 * @date 2020-5-31 20:43:36
 * @description 
 */
public interface RoleUserSQLMapper {
	
	public List<RoleUser> getRoleUserList(RoleUserVO model);

}
