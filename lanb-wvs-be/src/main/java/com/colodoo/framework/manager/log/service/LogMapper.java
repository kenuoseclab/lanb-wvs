package com.colodoo.framework.manager.log.service;

import com.colodoo.framework.manager.log.model.Log;
import com.colodoo.framework.manager.log.model.LogExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface LogMapper {
    /**
     *
     * @mbg.generated 2019-07-16
     */
    long countByExample(LogExample example);

    /**
     *
     * @mbg.generated 2019-07-16
     */
    int deleteByExample(LogExample example);

    /**
     *
     * @mbg.generated 2019-07-16
     */
    int deleteByPrimaryKey(String logId);

    /**
     *
     * @mbg.generated 2019-07-16
     */
    int insert(Log record);

    /**
     *
     * @mbg.generated 2019-07-16
     */
    int insertSelective(Log record);

    /**
     *
     * @mbg.generated 2019-07-16
     */
    List<Log> selectByExample(LogExample example);

    /**
     *
     * @mbg.generated 2019-07-16
     */
    Log selectByPrimaryKey(String logId);

    /**
     *
     * @mbg.generated 2019-07-16
     */
    int updateByExampleSelective(@Param("record") Log record, @Param("example") LogExample example);

    /**
     *
     * @mbg.generated 2019-07-16
     */
    int updateByExample(@Param("record") Log record, @Param("example") LogExample example);

    /**
     *
     * @mbg.generated 2019-07-16
     */
    int updateByPrimaryKeySelective(Log record);

    /**
     *
     * @mbg.generated 2019-07-16
     */
    int updateByPrimaryKey(Log record);
}