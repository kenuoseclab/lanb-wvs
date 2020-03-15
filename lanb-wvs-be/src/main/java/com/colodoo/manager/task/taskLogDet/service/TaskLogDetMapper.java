package com.colodoo.manager.task.taskLogDet.service;

import com.colodoo.manager.task.taskLogDet.model.TaskLogDet;
import com.colodoo.manager.task.taskLogDet.model.TaskLogDetExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TaskLogDetMapper {
    /**
     *
     * @mbg.generated 2020-03-15
     */
    long countByExample(TaskLogDetExample example);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    int deleteByExample(TaskLogDetExample example);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    int deleteByPrimaryKey(String taskLogDetId);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    int insert(TaskLogDet record);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    int insertSelective(TaskLogDet record);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    List<TaskLogDet> selectByExample(TaskLogDetExample example);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    TaskLogDet selectByPrimaryKey(String taskLogDetId);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    int updateByExampleSelective(@Param("record") TaskLogDet record, @Param("example") TaskLogDetExample example);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    int updateByExample(@Param("record") TaskLogDet record, @Param("example") TaskLogDetExample example);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    int updateByPrimaryKeySelective(TaskLogDet record);

    /**
     *
     * @mbg.generated 2020-03-15
     */
    int updateByPrimaryKey(TaskLogDet record);
}