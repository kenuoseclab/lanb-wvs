package com.colodoo.manager.scan.scanResult.service.mapper;

import java.util.List;

import com.colodoo.manager.scan.scanResult.model.ScanResultVO;
import com.colodoo.manager.scan.scanResult.model.ScanResult;

/**
 * @author colodoo
 * @date 2020-3-22 16:32:27
 * @description 
 */
public interface ScanResultSQLMapper {
	
	public List<ScanResult> getScanResultList(ScanResultVO model);

}
