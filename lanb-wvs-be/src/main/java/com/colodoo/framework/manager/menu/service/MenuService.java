package com.colodoo.framework.manager.menu.service;

import com.colodoo.framework.base.abs.BaseService;
import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.utils.Contants;
import com.colodoo.framework.manager.menu.model.Menu;
import com.colodoo.framework.manager.menu.model.MenuVO;
import com.colodoo.framework.easyui.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import com.colodoo.framework.manager.menu.service.mapper.MenuSQLMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
* @author colodoo
* @date 2019-4-18 23:21:02
* @description 
*/
@Service
@Slf4j
public class MenuService extends BaseService<Menu> {

	@Autowired
	MenuSQLMapper sqlMapper;

    /**
    * 新增数据
    *
    * @param model
    * @return
    */
    public int saveMenu(Menu model) {
        int ret = Contants.CODE_FAILED;
        model.setMenuId(uuid());
        // model.setCreateDate(new Date());
        // model.setLastDate(new Date());
        try {
            ret = this.insert(model);
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return ret;
    }

    /**
    * 删除数据
    *
    * @param model
    * @return
    */
    public int deleteMenu(Menu model) {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.delete(model.getMenuId());
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return ret;
    }

    /**
    * 更新数据
    *
    * @param model
    * @return
    */
    public int updateMenu(Menu model) {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.update(model);
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return ret;
    }

    /**
    * 根据id查找单条数据
    *
    * @param model
    * @return
    */
    public Menu queryById(Menu model) {
        Menu menu = null;
        try {
            menu = this.get(model.getMenuId());
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return menu;
    }

    /**
    * 查找列表
    *
    * @return
    */
    public List<Menu> query(MenuVO model) {
        List<Menu> list = null;
        try {
            list = sqlMapper.getMenuList(model);
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return list;
    }

    /**
    * 查找分页列表
    *
    * @param page
    * @return
    */
    public PageInfo<Menu> query(Page page, MenuVO model) {
        PageInfo<Menu> pageInfo;
        List<Menu> list = null;
        PageHelper.startPage(page.getPage(), page.getRows());
        try {
            list = sqlMapper.getMenuList(model);
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        pageInfo = new PageInfo<Menu>(list);
        return pageInfo;
    }
}
