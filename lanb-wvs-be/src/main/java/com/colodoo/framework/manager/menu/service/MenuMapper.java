package com.colodoo.framework.manager.menu.service;

import com.colodoo.framework.manager.menu.model.Menu;
import com.colodoo.framework.manager.menu.model.MenuExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MenuMapper {
    /**
     *
     * @mbg.generated 2019-04-18
     */
    long countByExample(MenuExample example);

    /**
     *
     * @mbg.generated 2019-04-18
     */
    int deleteByExample(MenuExample example);

    /**
     *
     * @mbg.generated 2019-04-18
     */
    int deleteByPrimaryKey(String menuId);

    /**
     *
     * @mbg.generated 2019-04-18
     */
    int insert(Menu record);

    /**
     *
     * @mbg.generated 2019-04-18
     */
    int insertSelective(Menu record);

    /**
     *
     * @mbg.generated 2019-04-18
     */
    List<Menu> selectByExample(MenuExample example);

    /**
     *
     * @mbg.generated 2019-04-18
     */
    Menu selectByPrimaryKey(String menuId);

    /**
     *
     * @mbg.generated 2019-04-18
     */
    int updateByExampleSelective(@Param("record") Menu record, @Param("example") MenuExample example);

    /**
     *
     * @mbg.generated 2019-04-18
     */
    int updateByExample(@Param("record") Menu record, @Param("example") MenuExample example);

    /**
     *
     * @mbg.generated 2019-04-18
     */
    int updateByPrimaryKeySelective(Menu record);

    /**
     *
     * @mbg.generated 2019-04-18
     */
    int updateByPrimaryKey(Menu record);
}