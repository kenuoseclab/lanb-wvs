package com.colodoo.manager.bugLevel.service;

import com.colodoo.manager.bugLevel.model.BugLevel;
import com.colodoo.manager.bugLevel.model.BugLevelExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BugLevelMapper {
    /**
     *
     * @mbg.generated 2019-04-14
     */
    long countByExample(BugLevelExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int deleteByExample(BugLevelExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int deleteByPrimaryKey(String bugLevelId);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int insert(BugLevel record);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int insertSelective(BugLevel record);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    List<BugLevel> selectByExample(BugLevelExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    BugLevel selectByPrimaryKey(String bugLevelId);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int updateByExampleSelective(@Param("record") BugLevel record, @Param("example") BugLevelExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int updateByExample(@Param("record") BugLevel record, @Param("example") BugLevelExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int updateByPrimaryKeySelective(BugLevel record);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int updateByPrimaryKey(BugLevel record);
}