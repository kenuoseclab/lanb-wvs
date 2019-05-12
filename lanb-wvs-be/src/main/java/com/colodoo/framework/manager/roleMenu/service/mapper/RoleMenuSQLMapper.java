package com.colodoo.framework.manager.roleMenu.service.mapper;

import java.util.List;

import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.manager.roleMenu.model.RoleMenuVO;
import com.colodoo.framework.manager.roleMenu.model.RoleMenu;

/**
 * @author colodoo
 * @date 2019-4-25 17:07:42
 * @description 
 */
public interface RoleMenuSQLMapper {
	
	public List<RoleMenu> getRoleMenuList(RoleMenuVO model) throws DAOException;

}
