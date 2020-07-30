package com.colodoo.manager.script.service.mapper;

import java.util.List;

import com.colodoo.manager.script.model.ScriptVO;
import com.colodoo.manager.script.model.Script;

/**
 * @author colodoo
 * @date 2020-7-26 17:17:08
 * @description 
 */
public interface ScriptSQLMapper {
	
	public List<Script> getScriptList(ScriptVO model);

}
