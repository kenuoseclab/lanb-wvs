package com.colodoo.manager.task.service;

import com.colodoo.manager.task.model.Task;
import com.colodoo.manager.task.model.TaskExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TaskMapper {
    /**
     *
     * @mbg.generated 2019-04-14
     */
    long countByExample(TaskExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int deleteByExample(TaskExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int deleteByPrimaryKey(String taskId);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int insert(Task record);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int insertSelective(Task record);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    List<Task> selectByExample(TaskExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    Task selectByPrimaryKey(String taskId);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int updateByExampleSelective(@Param("record") Task record, @Param("example") TaskExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int updateByExample(@Param("record") Task record, @Param("example") TaskExample example);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int updateByPrimaryKeySelective(Task record);

    /**
     *
     * @mbg.generated 2019-04-14
     */
    int updateByPrimaryKey(Task record);
}