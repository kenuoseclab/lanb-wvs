package com.colodoo.manager.asset.service;

import com.colodoo.manager.asset.model.Asset;
import com.colodoo.manager.asset.model.AssetExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AssetMapper {
    /**
     *
     * @mbg.generated 2019-04-14
     */
    long countByExample(AssetExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int deleteByExample(AssetExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int deleteByPrimaryKey(String assetId);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int insert(Asset record);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int insertSelective(Asset record);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    List<Asset> selectByExample(AssetExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    Asset selectByPrimaryKey(String assetId);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int updateByExampleSelective(@Param("record") Asset record, @Param("example") AssetExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int updateByExample(@Param("record") Asset record, @Param("example") AssetExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int updateByPrimaryKeySelective(Asset record);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int updateByPrimaryKey(Asset record);
}