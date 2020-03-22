package com.colodoo.manager.task.task.model;

import java.io.Serializable;

public class DashboardVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private int allCount;
    private int runningCount;
    private int errorCount;

    public int getAllCount() {
        return allCount;
    }

    public void setAllCount(int allCount) {
        this.allCount = allCount;
    }

    public int getRunningCount() {
        return runningCount;
    }

    public void setRunningCount(int runningCount) {
        this.runningCount = runningCount;
    }

    public int getErrorCount() {
        return errorCount;
    }

    public void setErrorCount(int errorCount) {
        this.errorCount = errorCount;
    }

    private int finshedCount;
    private int todoCount;
    private int reportCount;

    public int getFinshedCount() {
        return finshedCount;
    }

    public void setFinshedCount(int finshedCount) {
        this.finshedCount = finshedCount;
    }

    public int getTodoCount() {
        return todoCount;
    }

    public void setTodoCount(int todoCount) {
        this.todoCount = todoCount;
    }

    public int getReportCount() {
        return reportCount;
    }

    public void setReportCount(int reportCount) {
        this.reportCount = reportCount;
    }
}
