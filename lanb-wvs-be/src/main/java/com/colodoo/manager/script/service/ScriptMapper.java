package com.colodoo.manager.script.service;

import com.colodoo.manager.script.model.Script;
import com.colodoo.manager.script.model.ScriptExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ScriptMapper {
    /**
     *
     * @mbg.generated 2020-07-26
     */
    long countByExample(ScriptExample example);

    /**
     *
     * @mbg.generated 2020-07-26
     */
    int deleteByExample(ScriptExample example);

    /**
     *
     * @mbg.generated 2020-07-26
     */
    int deleteByPrimaryKey(String scriptId);

    /**
     *
     * @mbg.generated 2020-07-26
     */
    int insert(Script record);

    /**
     *
     * @mbg.generated 2020-07-26
     */
    int insertSelective(Script record);

    /**
     *
     * @mbg.generated 2020-07-26
     */
    List<Script> selectByExampleWithBLOBs(ScriptExample example);

    /**
     *
     * @mbg.generated 2020-07-26
     */
    List<Script> selectByExample(ScriptExample example);

    /**
     *
     * @mbg.generated 2020-07-26
     */
    Script selectByPrimaryKey(String scriptId);

    /**
     *
     * @mbg.generated 2020-07-26
     */
    int updateByExampleSelective(@Param("record") Script record, @Param("example") ScriptExample example);

    /**
     *
     * @mbg.generated 2020-07-26
     */
    int updateByExampleWithBLOBs(@Param("record") Script record, @Param("example") ScriptExample example);

    /**
     *
     * @mbg.generated 2020-07-26
     */
    int updateByExample(@Param("record") Script record, @Param("example") ScriptExample example);

    /**
     *
     * @mbg.generated 2020-07-26
     */
    int updateByPrimaryKeySelective(Script record);

    /**
     *
     * @mbg.generated 2020-07-26
     */
    int updateByPrimaryKeyWithBLOBs(Script record);

    /**
     *
     * @mbg.generated 2020-07-26
     */
    int updateByPrimaryKey(Script record);
}