package com.colodoo.manager.needs.service;

import com.colodoo.manager.needs.model.Needs;
import com.colodoo.manager.needs.model.NeedsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NeedsMapper {
    /**
     *
     * @mbg.generated 2020-03-15
     */
    long countByExample(NeedsExample example);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    int deleteByExample(NeedsExample example);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    int deleteByPrimaryKey(String needsId);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    int insert(Needs record);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    int insertSelective(Needs record);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    List<Needs> selectByExampleWithBLOBs(NeedsExample example);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    List<Needs> selectByExample(NeedsExample example);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    Needs selectByPrimaryKey(String needsId);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    int updateByExampleSelective(@Param("record") Needs record, @Param("example") NeedsExample example);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    int updateByExampleWithBLOBs(@Param("record") Needs record, @Param("example") NeedsExample example);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    int updateByExample(@Param("record") Needs record, @Param("example") NeedsExample example);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    int updateByPrimaryKeySelective(Needs record);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    int updateByPrimaryKeyWithBLOBs(Needs record);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    int updateByPrimaryKey(Needs record);
}