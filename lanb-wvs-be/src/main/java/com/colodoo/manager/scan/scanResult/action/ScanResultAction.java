package com.colodoo.manager.scan.scanResult.action;

import com.colodoo.framework.base.abs.BaseAction;
import com.colodoo.manager.scan.scanResult.model.PieChartVO;
import com.colodoo.manager.scan.scanResult.model.ScanResult;
import com.colodoo.manager.scan.scanResult.model.ScanResultVO;
import com.colodoo.manager.scan.scanResult.service.ScanResultService;
import com.colodoo.framework.utils.Contants;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.HashMap;
import java.util.Map;
import java.util.List;

/**
* @author colodoo
* @date 2020-3-23 20:21:24
* @description
*/
@Controller
@RequestMapping(value = "/scanResult")
@CrossOrigin
public class ScanResultAction extends BaseAction {

    @Autowired
    ScanResultService scanResultService;

	/**
	 * 新增数据
	 * 
	 * @param model
	 * @return
	 */
    @RequestMapping(value = "/save")
    @ResponseBody
    public Map<String, Object> save(@RequestBody ScanResult model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        int ret = scanResultService.saveScanResult(model);
        if(ret > 0) {
            rspMap.put("success", true);
        } else {
            rspMap.put("msg", Contants.MSG_SAVE_FAIL);
        }
        return rspMap;
    }

	/**
	 * 删除数据
	 * 
	 * @param model
	 * @return
	 */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public Map<String, Object> delete(@RequestBody ScanResult model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        int ret = scanResultService.deleteScanResult(model);
        if(ret > 0) {
            rspMap.put("success", true);
        } else {
            rspMap.put("msg", Contants.MSG_DELETE_FAIL);
        }
        return rspMap;
    }

	/**
	 * 更新数据
	 * 
	 * @param model
	 * @return
	 */
    @RequestMapping(value = "/update")
    @ResponseBody
    public Map<String, Object> update(@RequestBody ScanResult model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        int ret = scanResultService.updateScanResult(model);
        if(ret > 0) {
            rspMap.put("success", true);
        } else {
            rspMap.put("msg", Contants.MSG_UPDATE_FAIL);
        }
        return rspMap;
    }

	/**
	 * 根据id查找单条数据
	 * 
	 * @param model
	 * @return
	 */
    @RequestMapping(value = "/queryById")
    @ResponseBody
    public Map<String, Object> queryById(@RequestBody ScanResult model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        rspMap.put("rows", scanResultService.queryById(model));
        return rspMap;
    }

	/**
	 * 查找列表
	 * 
	 * @param model
	 * @return
	 */
    @RequestMapping(value = "/query")
    @ResponseBody
    public List<ScanResult> query(@RequestBody ScanResultVO model) {
        return scanResultService.query(model);
    }

	/**
	 * 查找分页列表
	 * 
	 * @param model
	 * @return
	 */
    @RequestMapping(value = "/queryPage")
    @ResponseBody
    public Map<String, Object> queryPage(@RequestBody ScanResultVO model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        model.setCreateUserId(this.getUserId());
        PageInfo<ScanResult> info = scanResultService.query(model.getPage(), model);
        rspMap.put(Contants.TABLE_ROWS, info.getList());
        rspMap.put(Contants.TABLE_TOTAL, info.getTotal());
        return rspMap;
    }


    /**
     * 资产漏洞数
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/getAssetbugsCount")
    @ResponseBody
    public List<PieChartVO> getAssetbugsCount(@RequestBody ScanResultVO model) {
        return scanResultService.getAssetbugsCount(model);
    }

    /**
     * 待处理漏洞
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/getTodoBugCount")
    @ResponseBody
    public List<PieChartVO> getTodoBugCount(@RequestBody ScanResultVO model) {
        return scanResultService.getTodoBugCount(model);
    }
}
