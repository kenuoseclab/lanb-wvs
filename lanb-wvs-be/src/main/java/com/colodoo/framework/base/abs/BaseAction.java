package com.colodoo.framework.base.abs;

import com.colodoo.framework.common.SessionObject;
import com.colodoo.framework.utils.Contants;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpSession;

public class BaseAction {

    @Autowired
    private HttpSession session;

    /*取当前会话对象*/
    public SessionObject getSessionObject() {
        return (SessionObject) session.getAttribute(Contants.SESSION_OBJECT_KEY);
    }

    /*检验是否登陆*/
    public boolean isLogin() {
        SessionObject sessionObject = this.getSessionObject();
        return sessionObject != null && sessionObject.getUser() != null;
    }

    /**
     * 取用户ID
     *
     * @return
     */
    public String getUserId() {
        return this.getSessionObject().getUser().getUserId();
    }

}
