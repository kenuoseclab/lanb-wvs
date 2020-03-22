package com.colodoo.manager.scan.scanResult.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class ScanResult {
    /**
     * 扫描结果
     */
    private String scanResultId;

    /**
     * 漏洞ID
     */
    private String bugId;

    /**
     * 任务日志ID
     */
    private String taskLogId;

    /**
     * 扫描结果
     */
    private String scanResult;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /**
     * 创建人
     */
    private String createUserId;

    /**
     * 更新时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateTime;

    /**
     * 备注
     */
    private String remark;

    /**
     * 扫描结果
     * @return scan_result_id 扫描结果
     */
    public String getScanResultId() {
        return scanResultId;
    }

    /**
     * 扫描结果
     * @param scanResultId 扫描结果
     */
    public void setScanResultId(String scanResultId) {
        this.scanResultId = scanResultId == null ? null : scanResultId.trim();
    }

    /**
     * 漏洞ID
     * @return bug_id 漏洞ID
     */
    public String getBugId() {
        return bugId;
    }

    /**
     * 漏洞ID
     * @param bugId 漏洞ID
     */
    public void setBugId(String bugId) {
        this.bugId = bugId == null ? null : bugId.trim();
    }

    /**
     * 任务日志ID
     * @return task_log_id 任务日志ID
     */
    public String getTaskLogId() {
        return taskLogId;
    }

    /**
     * 任务日志ID
     * @param taskLogId 任务日志ID
     */
    public void setTaskLogId(String taskLogId) {
        this.taskLogId = taskLogId == null ? null : taskLogId.trim();
    }

    /**
     * 扫描结果
     * @return scan_result 扫描结果
     */
    public String getScanResult() {
        return scanResult;
    }

    /**
     * 扫描结果
     * @param scanResult 扫描结果
     */
    public void setScanResult(String scanResult) {
        this.scanResult = scanResult == null ? null : scanResult.trim();
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

    /**
     * 创建人
     * @return create_user_id 创建人
     */
    public String getCreateUserId() {
        return createUserId;
    }

    /**
     * 创建人
     * @param createUserId 创建人
     */
    public void setCreateUserId(String createUserId) {
        this.createUserId = createUserId == null ? null : createUserId.trim();
    }

    /**
     * 更新时间
     * @return update_time 更新时间
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * 更新时间
     * @param updateTime 更新时间
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * 备注
     * @return remark 备注
     */
    public String getRemark() {
        return remark;
    }

    /**
     * 备注
     * @param remark 备注
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}