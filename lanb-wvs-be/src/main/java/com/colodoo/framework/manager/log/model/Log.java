package com.colodoo.framework.manager.log.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class Log {
    /**
     * 日志ID
     */
    private String logId;

    /**
     * 日志类型
     */
    private String logType;

    /**
     * 日志来源
     */
    private String logSource;

    /**
     * 日志内容
     */
    private String logContent;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /**
     * 日志ID
     * @return log_id 日志ID
     */
    public String getLogId() {
        return logId;
    }

    /**
     * 日志ID
     * @param logId 日志ID
     */
    public void setLogId(String logId) {
        this.logId = logId == null ? null : logId.trim();
    }

    /**
     * 日志类型
     * @return log_type 日志类型
     */
    public String getLogType() {
        return logType;
    }

    /**
     * 日志类型
     * @param logType 日志类型
     */
    public void setLogType(String logType) {
        this.logType = logType == null ? null : logType.trim();
    }

    /**
     * 日志来源
     * @return log_source 日志来源
     */
    public String getLogSource() {
        return logSource;
    }

    /**
     * 日志来源
     * @param logSource 日志来源
     */
    public void setLogSource(String logSource) {
        this.logSource = logSource == null ? null : logSource.trim();
    }

    /**
     * 日志内容
     * @return log_content 日志内容
     */
    public String getLogContent() {
        return logContent;
    }

    /**
     * 日志内容
     * @param logContent 日志内容
     */
    public void setLogContent(String logContent) {
        this.logContent = logContent == null ? null : logContent.trim();
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