package com.colodoo.manager.task.taskLogDet.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class TaskLogDet {
    /**
     * 任务日志详情ID
     */
    private String taskLogDetId;

    /**
     * 任务日志ID
     */
    private String taskLogId;

    /**
     * 任务日志详情项
     */
    private String taskLogDetKey;

    /**
     * 任务日志详情值
     */
    private String taskLogDetValue;

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
     * 任务日志详情ID
     * @return task_log_det_id 任务日志详情ID
     */
    public String getTaskLogDetId() {
        return taskLogDetId;
    }

    /**
     * 任务日志详情ID
     * @param taskLogDetId 任务日志详情ID
     */
    public void setTaskLogDetId(String taskLogDetId) {
        this.taskLogDetId = taskLogDetId == null ? null : taskLogDetId.trim();
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
     * 任务日志详情项
     * @return task_log_det_key 任务日志详情项
     */
    public String getTaskLogDetKey() {
        return taskLogDetKey;
    }

    /**
     * 任务日志详情项
     * @param taskLogDetKey 任务日志详情项
     */
    public void setTaskLogDetKey(String taskLogDetKey) {
        this.taskLogDetKey = taskLogDetKey == null ? null : taskLogDetKey.trim();
    }

    /**
     * 任务日志详情值
     * @return task_log_det_value 任务日志详情值
     */
    public String getTaskLogDetValue() {
        return taskLogDetValue;
    }

    /**
     * 任务日志详情值
     * @param taskLogDetValue 任务日志详情值
     */
    public void setTaskLogDetValue(String taskLogDetValue) {
        this.taskLogDetValue = taskLogDetValue == null ? null : taskLogDetValue.trim();
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