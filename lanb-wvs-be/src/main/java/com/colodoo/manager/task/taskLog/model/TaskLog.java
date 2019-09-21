package com.colodoo.manager.task.taskLog.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class TaskLog {
    /**
     * 任务日志ID
     */
    private String taskLogId;

    /**
     * 任务ID
     */
    private String taskId;

    /**
     * 任务日志状态
     */
    private String taskLogStatus;

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
     * 完成时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date finishedTime;

    /**
     * 备注
     */
    private String remark;

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
     * 任务ID
     * @return task_id 任务ID
     */
    public String getTaskId() {
        return taskId;
    }

    /**
     * 任务ID
     * @param taskId 任务ID
     */
    public void setTaskId(String taskId) {
        this.taskId = taskId == null ? null : taskId.trim();
    }

    /**
     * 任务日志状态
     * @return task_log_status 任务日志状态
     */
    public String getTaskLogStatus() {
        return taskLogStatus;
    }

    /**
     * 任务日志状态
     * @param taskLogStatus 任务日志状态
     */
    public void setTaskLogStatus(String taskLogStatus) {
        this.taskLogStatus = taskLogStatus == null ? null : taskLogStatus.trim();
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
     * 完成时间
     * @return finished_time 完成时间
     */
    public Date getFinishedTime() {
        return finishedTime;
    }

    /**
     * 完成时间
     * @param finishedTime 完成时间
     */
    public void setFinishedTime(Date finishedTime) {
        this.finishedTime = finishedTime;
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