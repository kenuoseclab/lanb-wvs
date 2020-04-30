package com.colodoo.framework.creater.model;

import com.colodoo.framework.easyui.Page;

import java.io.Serializable;

public class TablesVO extends Tables implements Serializable {

    private Page page;

    public Page getPage() {
        return page;
    }

    public void setPage(Page page) {
        this.page = page;
    }
}
