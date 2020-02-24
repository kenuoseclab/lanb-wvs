package com.colodoo.framework.creater.model;

import java.io.Serializable;

public class Tables implements Serializable {

    // 表名
    private String tableName;
    // 表注释
    private String tableComment;

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getTableComment() {
        return tableComment;
    }

    public void setTableComment(String tableComment) {
        this.tableComment = tableComment;
    }

}
