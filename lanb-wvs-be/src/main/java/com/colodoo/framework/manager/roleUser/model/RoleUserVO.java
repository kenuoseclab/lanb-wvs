package com.colodoo.framework.manager.roleUser.model;

import com.colodoo.framework.easyui.Page;
import lombok.Data;

/**
 * @author colodoo
 * @date 2018/8/30 15:34
 * @description
 */
@Data
public class RoleUserVO extends RoleUser {

    //角色名
    private String roleName;
    //用户名
    private String userName;

    private Page page;

}
