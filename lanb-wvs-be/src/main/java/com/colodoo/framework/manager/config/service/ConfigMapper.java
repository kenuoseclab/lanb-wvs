package com.colodoo.framework.manager.config.service;

import com.colodoo.framework.manager.config.model.Config;
import com.colodoo.framework.manager.config.model.ConfigExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ConfigMapper {
    /**
     *
     * @mbg.generated 2019-07-10
     */
    long countByExample(ConfigExample example);

    /**
     *
     * @mbg.generated 2019-07-10
     */
    int deleteByExample(ConfigExample example);

    /**
     *
     * @mbg.generated 2019-07-10
     */
    int deleteByPrimaryKey(String configId);

    /**
     *
     * @mbg.generated 2019-07-10
     */
    int insert(Config record);

    /**
     *
     * @mbg.generated 2019-07-10
     */
    int insertSelective(Config record);

    /**
     *
     * @mbg.generated 2019-07-10
     */
    List<Config> selectByExample(ConfigExample example);

    /**
     *
     * @mbg.generated 2019-07-10
     */
    Config selectByPrimaryKey(String configId);

    /**
     *
     * @mbg.generated 2019-07-10
     */
    int updateByExampleSelective(@Param("record") Config record, @Param("example") ConfigExample example);

    /**
     *
     * @mbg.generated 2019-07-10
     */
    int updateByExample(@Param("record") Config record, @Param("example") ConfigExample example);

    /**
     *
     * @mbg.generated 2019-07-10
     */
    int updateByPrimaryKeySelective(Config record);

    /**
     *
     * @mbg.generated 2019-07-10
     */
    int updateByPrimaryKey(Config record);
}