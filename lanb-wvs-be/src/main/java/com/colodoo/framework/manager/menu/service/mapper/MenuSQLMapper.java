package com.colodoo.framework.manager.menu.service.mapper;

import java.util.List;

import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.manager.menu.model.MenuVO;
import com.colodoo.framework.manager.menu.model.Menu;

/**
 * @author colodoo
 * @date 2019-4-18 23:21:02
 * @description 
 */
public interface MenuSQLMapper {
	
	public List<Menu> getMenuList(MenuVO model) throws DAOException;

}
