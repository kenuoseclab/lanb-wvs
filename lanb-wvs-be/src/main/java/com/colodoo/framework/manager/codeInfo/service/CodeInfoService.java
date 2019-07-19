package com.colodoo.framework.manager.codeInfo.service;

import com.colodoo.framework.base.abs.BaseService;
import com.colodoo.framework.exception.DAOException;
import com.colodoo.framework.utils.Contants;
import com.colodoo.framework.manager.codeInfo.model.CodeInfo;
import com.colodoo.framework.manager.codeInfo.model.CodeInfoVO;
import com.colodoo.framework.easyui.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import com.colodoo.framework.manager.codeInfo.service.mapper.CodeInfoSQLMapper;
import com.colodoo.framework.manager.codeType.model.CodeType;
import com.colodoo.framework.manager.codeType.model.CodeTypeVO;
import com.colodoo.framework.manager.codeType.service.mapper.CodeTypeSQLMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
* @author colodoo
* @date 2019-4-24 22:40:31
* @description 
*/
@Service
@Slf4j
public class CodeInfoService extends BaseService<CodeInfo> {

	@Autowired
	CodeInfoSQLMapper sqlMapper;
	@Autowired
	CodeTypeSQLMapper codeTypeSQLMapper;
	@Autowired
	CodeInfoMapper codeInfoMapper;

    /**
    * 新增数据
    *
    * @param model
    * @return
    */
    public int saveCodeInfo(CodeInfo model) {
        int ret = Contants.CODE_FAILED;
        model.setCodeInfoId(uuid());
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
    public int deleteCodeInfo(CodeInfo model) {
        int ret = Contants.CODE_FAILED;
        try {
            ret = this.delete(model.getCodeInfoId());
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
    public int updateCodeInfo(CodeInfo model) {
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
    public CodeInfo queryById(CodeInfo model) {
        CodeInfo codeInfo = null;
        try {
            codeInfo = this.get(model.getCodeInfoId());
        } catch (DAOException e) {
            log.error(e.getMsg());
        }
        return codeInfo;
    }

    /**
    * 查找列表
    *
    * @return
    */
    public List<CodeInfo> query(CodeInfoVO model) {
        List<CodeInfo> list = null;
        list = sqlMapper.getCodeInfoList(model);
        return list;
    }

    /**
    * 查找分页列表
    *
    * @param page
    * @return
    */
    public PageInfo<CodeInfo> query(Page page, CodeInfoVO model) {
        PageInfo<CodeInfo> pageInfo;
        List<CodeInfo> list = null;
        PageHelper.startPage(page.getPage(), page.getRows());
        list = sqlMapper.getCodeInfoList(model);
        pageInfo = new PageInfo<CodeInfo>(list);
        return pageInfo;
    }

    /**
     * 查找代码信息集合
     * 
     * @param model
     * @return
     */
	public Map<String, List<CodeInfo>> getCodeInfoMap(CodeInfoVO model) {
		Map<String, List<CodeInfo>> map = new HashMap<>();
		// 查找代码类型
		List<CodeType> codeTypes = codeTypeSQLMapper.getCodeTypeList(new CodeTypeVO());
		// 根据代码类型组装代码信息
		for (int i = 0; i < codeTypes.size(); i++) {
			CodeType codeType = codeTypes.get(i);
			if(codeType != null) {
				String codeTypeId = codeType.getCodeTypeId();
				if(codeTypeId != null && !"".equals(codeTypeId)) {
					model.setCodeTypeId(codeType.getCodeTypeId());
					List<CodeInfo> codeInfos = sqlMapper.getCodeInfoList(model);
					map.put(codeTypeId, codeInfos);
				}
			}
		}
		return map;
	}
}
