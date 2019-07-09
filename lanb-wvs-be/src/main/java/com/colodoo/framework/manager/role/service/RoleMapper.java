package com.colodoo.framework.manager.role.service;

import com.colodoo.framework.manager.role.model.Role;
import com.colodoo.framework.manager.role.model.RoleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RoleMapper {
    /**
     *
     * @mbg.generated 2019-07-01
     */
    long countByExample(RoleExample example);

    /**
     *
     * @mbg.generated 2019-07-01
     */
    int deleteByExample(RoleExample example);

    /**
     *
     * @mbg.generated 2019-07-01
     */
    int deleteByPrimaryKey(String roleId);

    /**
     *
     * @mbg.generated 2019-07-01
     */
    int insert(Role record);

    /**
     *
     * @mbg.generated 2019-07-01
     */
    int insertSelective(Role record);

    /**
     *
     * @mbg.generated 2019-07-01
     */
    List<Role> selectByExample(RoleExample example);

    /**
     *
     * @mbg.generated 2019-07-01
     */
    Role selectByPrimaryKey(String roleId);

    /**
     *
     * @mbg.generated 2019-07-01
     */
    int updateByExampleSelective(@Param("record") Role record, @Param("example") RoleExample example);

    /**
     *
     * @mbg.generated 2019-07-01
     */
    int updateByExample(@Param("record") Role record, @Param("example") RoleExample example);

    /**
     *
     * @mbg.generated 2019-07-01
     */
    int updateByPrimaryKeySelective(Role record);

    /**
     *
     * @mbg.generated 2019-07-01
     */
    int updateByPrimaryKey(Role record);
}