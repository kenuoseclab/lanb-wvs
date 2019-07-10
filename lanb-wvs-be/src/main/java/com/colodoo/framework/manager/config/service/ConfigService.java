package com.colodoo.framework.manager.config.service;

import com.colodoo.framework.base.abs.BaseService;
import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.utils.Contants;
import com.colodoo.framework.manager.config.model.Config;
import com.colodoo.framework.manager.config.model.ConfigVO;
import com.colodoo.framework.easyui.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import com.colodoo.framework.manager.config.service.mapper.ConfigSQLMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
* @author colodoo
* @date 2019-7-10 9:30:34
* @description 
*/
@Service
@Slf4j
public class ConfigService extends BaseService<Config> {

	@Autowired
	ConfigSQLMapper sqlMapper;

    /**
    * 新增数据
    *
    * @param model
    * @return
    */
    public int saveConfig(Config model) {
        int ret = Contants.CODE_FAILED;
        model.setConfigId(uuid());
        // model.setCreateDate(new Date());
        // model.setLastDate(new Date());
        try {
            ret = this.insert(model);
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return ret;
    }

    /**
    * 删除数据
    *
    * @param model
    * @return
    */
    public int deleteConfig(Config model) {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.delete(model.getConfigId());
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return ret;
    }

    /**
    * 更新数据
    *
    * @param model
    * @return
    */
    public int updateConfig(Config model) {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.update(model);
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return ret;
    }

    /**
    * 根据id查找单条数据
    *
    * @param model
    * @return
    */
    public Config queryById(Config model) {
        Config config = null;
        try {
            config = this.get(model.getConfigId());
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return config;
    }

    /**
    * 查找列表
    *
    * @return
    */
    public List<Config> query(ConfigVO model) {
        List<Config> list = null;
        list = sqlMapper.getConfigList(model);
        return list;
    }

    /**
    * 查找分页列表
    *
    * @param page
    * @return
    */
    public PageInfo<Config> query(Page page, ConfigVO model) {
        PageInfo<Config> pageInfo;
        List<Config> list = null;
        PageHelper.startPage(page.getPage(), page.getRows());
        list = sqlMapper.getConfigList(model);
        pageInfo = new PageInfo<Config>(list);
        return pageInfo;
    }
}
