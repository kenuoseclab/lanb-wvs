package com.colodoo.manager.bugLevel.model;

import java.io.Serializable;
import java.util.Date;

import com.colodoo.framework.easyui.Page;

/**
* @author colodoo
* @date 2019-4-14 20:49:28
* @description 
*/
public class BugLevelVO extends BugLevel implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Date dateFrom;
    private Date dateTo;
    
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
    
    public BugLevelVO() {
		this.page = new Page();
	}
}
