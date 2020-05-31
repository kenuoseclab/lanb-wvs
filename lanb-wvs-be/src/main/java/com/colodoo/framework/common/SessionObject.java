package com.colodoo.framework.common;

import com.colodoo.framework.manager.roleMenu.model.RoleMenu;
import com.colodoo.framework.manager.roleUser.model.RoleUser;
import com.colodoo.framework.manager.user.model.User;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import lombok.Data;

/**
 * @author colodoo
 * @date 2018/10/18 15:55
 * @description
 */
@Data
public class SessionObject implements Serializable {

    private static final long serialVersionUID = 1L;

    private User user;
    private List<RoleUser> roleUsers;
    private Map<String, List> roleMenu;
    private String currentRoleId;

}
