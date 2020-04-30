package com.colodoo.manager.scan.scanResult.service;

import com.colodoo.manager.scan.scanResult.model.ScanResult;
import com.colodoo.manager.scan.scanResult.model.ScanResultExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ScanResultMapper {
    /**
     *
     * @mbg.generated 2020-03-23
     */
    long countByExample(ScanResultExample example);

    /**
     *
     * @mbg.generated 2020-03-23
     */
    int deleteByExample(ScanResultExample example);

    /**
     *
     * @mbg.generated 2020-03-23
     */
    int deleteByPrimaryKey(String scanResultId);

    /**
     *
     * @mbg.generated 2020-03-23
     */
    int insert(ScanResult record);

    /**
     *
     * @mbg.generated 2020-03-23
     */
    int insertSelective(ScanResult record);

    /**
     *
     * @mbg.generated 2020-03-23
     */
    List<ScanResult> selectByExample(ScanResultExample example);

    /**
     *
     * @mbg.generated 2020-03-23
     */
    ScanResult selectByPrimaryKey(String scanResultId);

    /**
     *
     * @mbg.generated 2020-03-23
     */
    int updateByExampleSelective(@Param("record") ScanResult record, @Param("example") ScanResultExample example);

    /**
     *
     * @mbg.generated 2020-03-23
     */
    int updateByExample(@Param("record") ScanResult record, @Param("example") ScanResultExample example);

    /**
     *
     * @mbg.generated 2020-03-23
     */
    int updateByPrimaryKeySelective(ScanResult record);

    /**
     *
     * @mbg.generated 2020-03-23
     */
    int updateByPrimaryKey(ScanResult record);
}