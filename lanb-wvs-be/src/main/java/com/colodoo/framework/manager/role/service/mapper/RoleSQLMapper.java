package com.colodoo.framework.manager.role.service.mapper;

import java.util.List;

import com.colodoo.framework.manager.role.model.RoleVO;
import com.colodoo.framework.manager.role.model.Role;

/**
 * @author colodoo
 * @date 2019-7-1 15:50:08
 * @description 
 */
public interface RoleSQLMapper {
	
	public List<Role> getRoleList(RoleVO model);

}
