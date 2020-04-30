package com.colodoo.manager.task.taskAttr.service;

import com.colodoo.manager.task.taskAttr.model.TaskAttr;
import com.colodoo.manager.task.taskAttr.model.TaskAttrExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TaskAttrMapper {
    /**
     *
     * @mbg.generated 2019-09-03
     */
    long countByExample(TaskAttrExample example);

    /**
     *
     * @mbg.generated 2019-09-03
     */
    int deleteByExample(TaskAttrExample example);

    /**
     *
     * @mbg.generated 2019-09-03
     */
    int deleteByPrimaryKey(String taskAttrId);

    /**
     *
     * @mbg.generated 2019-09-03
     */
    int insert(TaskAttr record);

    /**
     *
     * @mbg.generated 2019-09-03
     */
    int insertSelective(TaskAttr record);

    /**
     *
     * @mbg.generated 2019-09-03
     */
    List<TaskAttr> selectByExample(TaskAttrExample example);

    /**
     *
     * @mbg.generated 2019-09-03
     */
    TaskAttr selectByPrimaryKey(String taskAttrId);

    /**
     *
     * @mbg.generated 2019-09-03
     */
    int updateByExampleSelective(@Param("record") TaskAttr record, @Param("example") TaskAttrExample example);

    /**
     *
     * @mbg.generated 2019-09-03
     */
    int updateByExample(@Param("record") TaskAttr record, @Param("example") TaskAttrExample example);

    /**
     *
     * @mbg.generated 2019-09-03
     */
    int updateByPrimaryKeySelective(TaskAttr record);

    /**
     *
     * @mbg.generated 2019-09-03
     */
    int updateByPrimaryKey(TaskAttr record);
}