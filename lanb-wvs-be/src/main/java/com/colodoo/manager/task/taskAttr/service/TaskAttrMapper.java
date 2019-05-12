package com.colodoo.manager.task.taskAttr.service;

import com.colodoo.manager.task.taskAttr.model.TaskAttr;
import com.colodoo.manager.task.taskAttr.model.TaskAttrExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TaskAttrMapper {
    /**
     *
     * @mbg.generated 2019-04-25
     */
    long countByExample(TaskAttrExample example);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    int deleteByExample(TaskAttrExample example);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    int deleteByPrimaryKey(String taskAttrId);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    int insert(TaskAttr record);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    int insertSelective(TaskAttr record);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    List<TaskAttr> selectByExample(TaskAttrExample example);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    TaskAttr selectByPrimaryKey(String taskAttrId);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    int updateByExampleSelective(@Param("record") TaskAttr record, @Param("example") TaskAttrExample example);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    int updateByExample(@Param("record") TaskAttr record, @Param("example") TaskAttrExample example);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    int updateByPrimaryKeySelective(TaskAttr record);

    /**
     *
     * @mbg.generated 2019-04-25
     */
    int updateByPrimaryKey(TaskAttr record);
}