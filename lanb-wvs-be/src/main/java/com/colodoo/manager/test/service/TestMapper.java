package com.colodoo.manager.test.service;

import com.colodoo.manager.test.model.Test;
import com.colodoo.manager.test.model.TestExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TestMapper {
    /**
     *
     * @mbg.generated 2019-06-30
     */
    long countByExample(TestExample example);

    /**
     *
     * @mbg.generated 2019-06-30
     */
    int deleteByExample(TestExample example);

    /**
     *
     * @mbg.generated 2019-06-30
     */
    int deleteByPrimaryKey(String testId);

    /**
     *
     * @mbg.generated 2019-06-30
     */
    int insert(Test record);

    /**
     *
     * @mbg.generated 2019-06-30
     */
    int insertSelective(Test record);

    /**
     *
     * @mbg.generated 2019-06-30
     */
    List<Test> selectByExample(TestExample example);

    /**
     *
     * @mbg.generated 2019-06-30
     */
    Test selectByPrimaryKey(String testId);

    /**
     *
     * @mbg.generated 2019-06-30
     */
    int updateByExampleSelective(@Param("record") Test record, @Param("example") TestExample example);

    /**
     *
     * @mbg.generated 2019-06-30
     */
    int updateByExample(@Param("record") Test record, @Param("example") TestExample example);

    /**
     *
     * @mbg.generated 2019-06-30
     */
    int updateByPrimaryKeySelective(Test record);

    /**
     *
     * @mbg.generated 2019-06-30
     */
    int updateByPrimaryKey(Test record);
}