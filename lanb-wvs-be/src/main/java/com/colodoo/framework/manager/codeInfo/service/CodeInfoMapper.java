package com.colodoo.framework.manager.codeInfo.service;

import com.colodoo.framework.manager.codeInfo.model.CodeInfo;
import com.colodoo.framework.manager.codeInfo.model.CodeInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CodeInfoMapper {
    /**
     *
     * @mbg.generated 2019-04-22
     */
    long countByExample(CodeInfoExample example);

    /**
     *
     * @mbg.generated 2019-04-22
     */
    int deleteByExample(CodeInfoExample example);

    /**
     *
     * @mbg.generated 2019-04-22
     */
    int deleteByPrimaryKey(String codeInfoId);

    /**
     *
     * @mbg.generated 2019-04-22
     */
    int insert(CodeInfo record);

    /**
     *
     * @mbg.generated 2019-04-22
     */
    int insertSelective(CodeInfo record);

    /**
     *
     * @mbg.generated 2019-04-22
     */
    List<CodeInfo> selectByExample(CodeInfoExample example);

    /**
     *
     * @mbg.generated 2019-04-22
     */
    CodeInfo selectByPrimaryKey(String codeInfoId);

    /**
     *
     * @mbg.generated 2019-04-22
     */
    int updateByExampleSelective(@Param("record") CodeInfo record, @Param("example") CodeInfoExample example);

    /**
     *
     * @mbg.generated 2019-04-22
     */
    int updateByExample(@Param("record") CodeInfo record, @Param("example") CodeInfoExample example);

    /**
     *
     * @mbg.generated 2019-04-22
     */
    int updateByPrimaryKeySelective(CodeInfo record);

    /**
     *
     * @mbg.generated 2019-04-22
     */
    int updateByPrimaryKey(CodeInfo record);
}