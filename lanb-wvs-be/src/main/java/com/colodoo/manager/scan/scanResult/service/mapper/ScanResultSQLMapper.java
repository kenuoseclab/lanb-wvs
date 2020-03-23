package com.colodoo.manager.scan.scanResult.service.mapper;

import java.util.List;

import com.colodoo.manager.scan.scanResult.model.PieChartVO;
import com.colodoo.manager.scan.scanResult.model.ScanResultVO;
import com.colodoo.manager.scan.scanResult.model.ScanResult;

/**
 * @author colodoo
 * @date 2020-3-23 20:21:24
 * @description 
 */
public interface ScanResultSQLMapper {
	
	public List<ScanResult> getScanResultList(ScanResultVO model);

	public List<PieChartVO> getAssetbugsCount(ScanResultVO model);

	public List<PieChartVO> getTodoBugCount(ScanResultVO model);

}
