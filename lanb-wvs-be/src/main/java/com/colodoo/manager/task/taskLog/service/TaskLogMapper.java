package com.colodoo.manager.task.taskLog.service;

import com.colodoo.manager.task.taskLog.model.TaskLog;
import com.colodoo.manager.task.taskLog.model.TaskLogExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TaskLogMapper {
    /**
     *
     * @mbg.generated 2019-09-20
     */
    long countByExample(TaskLogExample example);

    /**
     *
     * @mbg.generated 2019-09-20
     */
    int deleteByExample(TaskLogExample example);

    /**
     *
     * @mbg.generated 2019-09-20
     */
    int deleteByPrimaryKey(String taskLogId);

    /**
     *
     * @mbg.generated 2019-09-20
     */
    int insert(TaskLog record);

    /**
     *
     * @mbg.generated 2019-09-20
     */
    int insertSelective(TaskLog record);

    /**
     *
     * @mbg.generated 2019-09-20
     */
    List<TaskLog> selectByExample(TaskLogExample example);

    /**
     *
     * @mbg.generated 2019-09-20
     */
    TaskLog selectByPrimaryKey(String taskLogId);

    /**
     *
     * @mbg.generated 2019-09-20
     */
    int updateByExampleSelective(@Param("record") TaskLog record, @Param("example") TaskLogExample example);

    /**
     *
     * @mbg.generated 2019-09-20
     */
    int updateByExample(@Param("record") TaskLog record, @Param("example") TaskLogExample example);

    /**
     *
     * @mbg.generated 2019-09-20
     */
    int updateByPrimaryKeySelective(TaskLog record);

    /**
     *
     * @mbg.generated 2019-09-20
     */
    int updateByPrimaryKey(TaskLog record);
}