package com.colodoo.framework.manager.config.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class Config {
    /**
     * 配置ID
     */
    private String configId;

    /**
     * 配置名
     */
    private String configName;

    /**
     * 配置值
     */
    private String configValue;

    /**
     * 排序
     */
    private Integer sortNo;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createDate;

    /**
     * 备注
     */
    private String remark;

    /**
     * 配置ID
     * @return config_id 配置ID
     */
    public String getConfigId() {
        return configId;
    }

    /**
     * 配置ID
     * @param configId 配置ID
     */
    public void setConfigId(String configId) {
        this.configId = configId == null ? null : configId.trim();
    }

    /**
     * 配置名
     * @return config_name 配置名
     */
    public String getConfigName() {
        return configName;
    }

    /**
     * 配置名
     * @param configName 配置名
     */
    public void setConfigName(String configName) {
        this.configName = configName == null ? null : configName.trim();
    }

    /**
     * 配置值
     * @return config_value 配置值
     */
    public String getConfigValue() {
        return configValue;
    }

    /**
     * 配置值
     * @param configValue 配置值
     */
    public void setConfigValue(String configValue) {
        this.configValue = configValue == null ? null : configValue.trim();
    }

    /**
     * 排序
     * @return sort_no 排序
     */
    public Integer getSortNo() {
        return sortNo;
    }

    /**
     * 排序
     * @param sortNo 排序
     */
    public void setSortNo(Integer sortNo) {
        this.sortNo = sortNo;
    }

    /**
     * 创建时间
     * @return create_date 创建时间
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * 创建时间
     * @param createDate 创建时间
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
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