package com.colodoo.manager.task.taskAttr.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class TaskAttr {
    /**
     * 任务属性ID
     */
    private String taskAttrId;

    /**
     * 任务ID
     */
    private String taskId;

    /**
     * 任务属性名
     */
    private String taskAttrKey;

    /**
     * 任务属性值
     */
    private String taskAttrValue;

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
     * 更新人
     */
    private String updateUserId;

    /**
     * 备注
     */
    private String remark;

    /**
     * 任务属性ID
     * @return task_attr_id 任务属性ID
     */
    public String getTaskAttrId() {
        return taskAttrId;
    }

    /**
     * 任务属性ID
     * @param taskAttrId 任务属性ID
     */
    public void setTaskAttrId(String taskAttrId) {
        this.taskAttrId = taskAttrId == null ? null : taskAttrId.trim();
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
     * 任务属性名
     * @return task_attr_key 任务属性名
     */
    public String getTaskAttrKey() {
        return taskAttrKey;
    }

    /**
     * 任务属性名
     * @param taskAttrKey 任务属性名
     */
    public void setTaskAttrKey(String taskAttrKey) {
        this.taskAttrKey = taskAttrKey == null ? null : taskAttrKey.trim();
    }

    /**
     * 任务属性值
     * @return task_attr_value 任务属性值
     */
    public String getTaskAttrValue() {
        return taskAttrValue;
    }

    /**
     * 任务属性值
     * @param taskAttrValue 任务属性值
     */
    public void setTaskAttrValue(String taskAttrValue) {
        this.taskAttrValue = taskAttrValue == null ? null : taskAttrValue.trim();
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
     * 更新人
     * @return update_user_id 更新人
     */
    public String getUpdateUserId() {
        return updateUserId;
    }

    /**
     * 更新人
     * @param updateUserId 更新人
     */
    public void setUpdateUserId(String updateUserId) {
        this.updateUserId = updateUserId == null ? null : updateUserId.trim();
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

	public TaskAttr(String taskAttrId, String taskId, String taskAttrKey, String taskAttrValue, Date createTime,
			String createUserId, Date updateTime, String updateUserId, String remark) {
		super();
		this.taskAttrId = taskAttrId;
		this.taskId = taskId;
		this.taskAttrKey = taskAttrKey;
		this.taskAttrValue = taskAttrValue;
		this.createTime = createTime;
		this.createUserId = createUserId;
		this.updateTime = updateTime;
		this.updateUserId = updateUserId;
		this.remark = remark;
	}

	public TaskAttr() {
		super();
		// TODO Auto-generated constructor stub
	}
}