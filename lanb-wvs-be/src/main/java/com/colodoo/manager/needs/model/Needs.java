package com.colodoo.manager.needs.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class Needs {
    /**
     * 需求ID
     */
    private String needsId;

    /**
     * 需求名称
     */
    private String needsName;

    /**
     * 需求状态
     */
    private String needsStatus;

    /**
     * 需求阶段
     */
    private String needsStep;

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
     * 需求内容
     */
    private String needsContent;

    /**
     * 需求ID
     * @return needs_id 需求ID
     */
    public String getNeedsId() {
        return needsId;
    }

    /**
     * 需求ID
     * @param needsId 需求ID
     */
    public void setNeedsId(String needsId) {
        this.needsId = needsId == null ? null : needsId.trim();
    }

    /**
     * 需求名称
     * @return needs_name 需求名称
     */
    public String getNeedsName() {
        return needsName;
    }

    /**
     * 需求名称
     * @param needsName 需求名称
     */
    public void setNeedsName(String needsName) {
        this.needsName = needsName == null ? null : needsName.trim();
    }

    /**
     * 需求状态
     * @return needs_status 需求状态
     */
    public String getNeedsStatus() {
        return needsStatus;
    }

    /**
     * 需求状态
     * @param needsStatus 需求状态
     */
    public void setNeedsStatus(String needsStatus) {
        this.needsStatus = needsStatus == null ? null : needsStatus.trim();
    }

    /**
     * 需求阶段
     * @return needs_step 需求阶段
     */
    public String getNeedsStep() {
        return needsStep;
    }

    /**
     * 需求阶段
     * @param needsStep 需求阶段
     */
    public void setNeedsStep(String needsStep) {
        this.needsStep = needsStep == null ? null : needsStep.trim();
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

    /**
     * 需求内容
     * @return needs_content 需求内容
     */
    public String getNeedsContent() {
        return needsContent;
    }

    /**
     * 需求内容
     * @param needsContent 需求内容
     */
    public void setNeedsContent(String needsContent) {
        this.needsContent = needsContent == null ? null : needsContent.trim();
    }
}