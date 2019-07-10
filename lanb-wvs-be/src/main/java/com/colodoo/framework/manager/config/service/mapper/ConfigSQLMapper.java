package com.colodoo.framework.manager.config.service.mapper;

import java.util.List;

import com.colodoo.framework.manager.config.model.ConfigVO;
import com.colodoo.framework.manager.config.model.Config;

/**
 * @author colodoo
 * @date 2019-7-10 9:30:34
 * @description 
 */
public interface ConfigSQLMapper {
	
	public List<Config> getConfigList(ConfigVO model);

}
