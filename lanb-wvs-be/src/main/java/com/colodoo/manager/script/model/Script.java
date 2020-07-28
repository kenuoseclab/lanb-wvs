package com.colodoo.manager.script.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class Script {
    /**
     * 脚本ID
     */
    private String scriptId;

    /**
     * 脚本名称
     */
    private String scriptName;

    /**
     * 脚本类型
     */
    private String scriptType;

    /**
     * 漏洞ID
     */
    private String bugId;

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
     * 脚本内容
     */
    private String scriptContent;

    /**
     * 脚本ID
     * @return script_id 脚本ID
     */
    public String getScriptId() {
        return scriptId;
    }

    /**
     * 脚本ID
     * @param scriptId 脚本ID
     */
    public void setScriptId(String scriptId) {
        this.scriptId = scriptId == null ? null : scriptId.trim();
    }

    /**
     * 脚本名称
     * @return script_name 脚本名称
     */
    public String getScriptName() {
        return scriptName;
    }

    /**
     * 脚本名称
     * @param scriptName 脚本名称
     */
    public void setScriptName(String scriptName) {
        this.scriptName = scriptName == null ? null : scriptName.trim();
    }

    /**
     * 脚本类型
     * @return script_type 脚本类型
     */
    public String getScriptType() {
        return scriptType;
    }

    /**
     * 脚本类型
     * @param scriptType 脚本类型
     */
    public void setScriptType(String scriptType) {
        this.scriptType = scriptType == null ? null : scriptType.trim();
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
     * 脚本内容
     * @return script_content 脚本内容
     */
    public String getScriptContent() {
        return scriptContent;
    }

    /**
     * 脚本内容
     * @param scriptContent 脚本内容
     */
    public void setScriptContent(String scriptContent) {
        this.scriptContent = scriptContent == null ? null : scriptContent.trim();
    }
}