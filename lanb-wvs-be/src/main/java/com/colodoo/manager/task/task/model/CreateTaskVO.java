package com.colodoo.manager.task.task.model;

import java.io.Serializable;

/**
 * 创建任务VO类
 * 
 * @author colodoo
 *
 */
public class CreateTaskVO extends Task implements Serializable {

	private static final long serialVersionUID = 1L;

	// 周期
	private String cycle;
	// 关联资产
	private String assets;
	// 关联漏洞
	private String bugs;
	// 扫描方式
	private String scanType;
	// 报告模板
	private String reportTemplate;

	public String getCycle() {
		return cycle;
	}

	public void setCycle(String cycle) {
		this.cycle = cycle;
	}

	public String getAssets() {
		return assets;
	}

	public void setAssets(String assets) {
		this.assets = assets;
	}

	public String getBugs() {
		return bugs;
	}

	public void setBugs(String bugs) {
		this.bugs = bugs;
	}

	public String getScanType() {
		return scanType;
	}

	public void setScanType(String scanType) {
		this.scanType = scanType;
	}

	public String getReportTemplate() {
		return reportTemplate;
	}

	public void setReportTemplate(String reportTemplate) {
		this.reportTemplate = reportTemplate;
	}

}
