package com.colodoo.manager.bug.service;

import com.colodoo.manager.bug.model.Bug;
import com.colodoo.manager.bug.model.BugExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BugMapper {
    /**
     *
     * @mbg.generated 2019-04-14
     */
    long countByExample(BugExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int deleteByExample(BugExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int deleteByPrimaryKey(String bugId);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int insert(Bug record);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int insertSelective(Bug record);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    List<Bug> selectByExample(BugExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    Bug selectByPrimaryKey(String bugId);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int updateByExampleSelective(@Param("record") Bug record, @Param("example") BugExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int updateByExample(@Param("record") Bug record, @Param("example") BugExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int updateByPrimaryKeySelective(Bug record);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int updateByPrimaryKey(Bug record);
}