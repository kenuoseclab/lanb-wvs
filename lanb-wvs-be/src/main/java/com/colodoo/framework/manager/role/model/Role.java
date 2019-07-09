package com.colodoo.framework.manager.role.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class Role {
    /**
     * 角色ID
     */
    private String roleId;

    /**
     * 角色名
     */
    private String roleName;

    /**
     * 角色配置项
     */
    private String options;

    /**
     * 父角色ID
     */
    private String parentRoleId;

    /**
     * 排序
     */
    private Integer sort;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /**
     * 角色ID
     * @return role_id 角色ID
     */
    public String getRoleId() {
        return roleId;
    }

    /**
     * 角色ID
     * @param roleId 角色ID
     */
    public void setRoleId(String roleId) {
        this.roleId = roleId == null ? null : roleId.trim();
    }

    /**
     * 角色名
     * @return role_name 角色名
     */
    public String getRoleName() {
        return roleName;
    }

    /**
     * 角色名
     * @param roleName 角色名
     */
    public void setRoleName(String roleName) {
        this.roleName = roleName == null ? null : roleName.trim();
    }

    /**
     * 角色配置项
     * @return options 角色配置项
     */
    public String getOptions() {
        return options;
    }

    /**
     * 角色配置项
     * @param options 角色配置项
     */
    public void setOptions(String options) {
        this.options = options == null ? null : options.trim();
    }

    /**
     * 父角色ID
     * @return parent_role_id 父角色ID
     */
    public String getParentRoleId() {
        return parentRoleId;
    }

    /**
     * 父角色ID
     * @param parentRoleId 父角色ID
     */
    public void setParentRoleId(String parentRoleId) {
        this.parentRoleId = parentRoleId == null ? null : parentRoleId.trim();
    }

    /**
     * 排序
     * @return sort 排序
     */
    public Integer getSort() {
        return sort;
    }

    /**
     * 排序
     * @param sort 排序
     */
    public void setSort(Integer sort) {
        this.sort = sort;
    }

    /**
     * 创建时间
     * @return create_time 创建时间
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 创建时间
     * @param createTime 创建时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}