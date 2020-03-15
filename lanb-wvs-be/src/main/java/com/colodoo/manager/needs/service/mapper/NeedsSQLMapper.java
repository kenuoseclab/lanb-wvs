package com.colodoo.manager.needs.service.mapper;

import java.util.List;

import com.colodoo.manager.needs.model.NeedsVO;
import com.colodoo.manager.needs.model.Needs;

/**
 * @author colodoo
 * @date 2020-3-15 18:09:40
 * @description 
 */
public interface NeedsSQLMapper {
	
	public List<Needs> getNeedsList(NeedsVO model);

}
