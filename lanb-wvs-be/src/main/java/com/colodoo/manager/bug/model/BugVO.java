package com.colodoo.manager.bug.model;

import java.io.Serializable;
import java.util.Date;

import com.colodoo.framework.easyui.Page;

/**
 * @author colodoo
 * @date 2019-4-14 19:29:44
 * @description
 */
public class BugVO extends Bug implements Serializable {

	private static final long serialVersionUID = 1L;

	private Date dateFrom;
	private Date dateTo;

	// 创建人用户名
	private String createUserName;
	// 更新人用户名
	private String updateUserName;

	public String getCreateUserName() {
		return createUserName;
	}

	public void setCreateUserName(String createUserName) {
		this.createUserName = createUserName;
	}

	public String getUpdateUserName() {
		return updateUserName;
	}

	public void setUpdateUserName(String updateUserName) {
		this.updateUserName = updateUserName;
	}

	private Page page;

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public void setDateFrom(Date dateFrom) {
		this.dateFrom = dateFrom;
	}

	public void setDateTo(Date dateTo) {
		this.dateTo = dateTo;
	}

	public Date getDateFrom(Date dateFrom) {
		return this.dateFrom;
	}

	public Date getDateTo(Date dateTo) {
		return this.dateTo;
	}

	public BugVO() {
		this.page = new Page();
	}
}
