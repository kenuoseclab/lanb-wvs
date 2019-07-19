package com.colodoo.manager.asset.service.mapper;

import java.util.List;

import com.colodoo.framework.exception.DAOException;
import com.colodoo.manager.asset.model.AssetVO;
import com.colodoo.manager.asset.model.Asset;

/**
 * @author colodoo
 * @date 2019-4-14 22:03:35
 * @description 
 */
public interface AssetSQLMapper {
	
	public List<AssetVO> getAssetList(AssetVO model) throws DAOException;

}
