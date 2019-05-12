package com.colodoo.manager.task.task.service;

import com.colodoo.manager.task.task.model.Task;
import com.colodoo.manager.task.task.model.TaskExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TaskMapper {
    /**
     *
     * @mbg.generated 2019-04-25
     */
    long countByExample(TaskExample example);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    int deleteByExample(TaskExample example);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    int deleteByPrimaryKey(String taskId);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    int insert(Task record);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    int insertSelective(Task record);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    List<Task> selectByExample(TaskExample example);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    Task selectByPrimaryKey(String taskId);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    int updateByExampleSelective(@Param("record") Task record, @Param("example") TaskExample example);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    int updateByExample(@Param("record") Task record, @Param("example") TaskExample example);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    int updateByPrimaryKeySelective(Task record);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    int updateByPrimaryKey(Task record);
}