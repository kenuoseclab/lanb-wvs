package com.colodoo.manager.script.action;

import com.colodoo.manager.script.model.Script;
import com.colodoo.manager.script.model.ScriptVO;
import com.colodoo.manager.script.service.ScriptService;
import com.colodoo.framework.utils.Contants;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.List;

/**
 * @author colodoo
 * @date 2020-7-26 17:17:08
 * @description
 */
@Controller
@RequestMapping(value = "/script")
@CrossOrigin
public class ScriptAction {

    @Autowired
    ScriptService scriptService;

    /**
     * 新增数据
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/save")
    @ResponseBody
    public Map<String, Object> save(@RequestBody Script model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        int ret = scriptService.saveScript(model);
        if (ret > 0) {
            rspMap.put("success", true);
        } else {
            rspMap.put("msg", Contants.MSG_SAVE_FAIL);
        }
        return rspMap;
    }

    /**
     * 删除数据
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public Map<String, Object> delete(@RequestBody Script model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        int ret = scriptService.deleteScript(model);
        if (ret > 0) {
            rspMap.put("success", true);
        } else {
            rspMap.put("msg", Contants.MSG_DELETE_FAIL);
        }
        return rspMap;
    }

    /**
     * 更新数据
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public Map<String, Object> update(@RequestBody Script model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        int ret = scriptService.updateScript(model);
        if (ret > 0) {
            rspMap.put("success", true);
        } else {
            rspMap.put("msg", Contants.MSG_UPDATE_FAIL);
        }
        return rspMap;
    }

    /**
     * 根据id查找单条数据
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/queryById")
    @ResponseBody
    public Map<String, Object> queryById(@RequestBody Script model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        rspMap.put("rows", scriptService.queryById(model));
        return rspMap;
    }

    /**
     * 查找列表
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/query")
    @ResponseBody
    public List<Script> query(@RequestBody ScriptVO model) {
        return scriptService.query(model);
    }

    /**
     * 查找分页列表
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/queryPage")
    @ResponseBody
    public Map<String, Object> queryPage(@RequestBody ScriptVO model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();
        PageInfo<Script> info = scriptService.query(model.getPage(), model);
        rspMap.put(Contants.TABLE_ROWS, info.getList());
        rspMap.put(Contants.TABLE_TOTAL, info.getTotal());
        return rspMap;
    }

    /**
     * 关联漏洞
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/linkBug")
    @ResponseBody
    public Map<String, Object> linkBug(@RequestBody Script model) {
        Map<String, Object> rspMap = new HashMap<String, Object>();

        // 所有的脚本
        String scriptIds = model.getScriptId();
        String[] scriptIdArr = scriptIds.split(",");
        // 漏洞ID
        String budId = model.getBugId();

        // 比对出删除的
        // 更新为空
        List<Script> deleteScript = new ArrayList<Script>();
        ScriptVO tmpScript = new ScriptVO();
        List<Script> tmpSctiptList = scriptService.query(tmpScript);
        for (int i = 0; i < tmpSctiptList.size(); i++) {
            for (int j = 0; j < scriptIdArr.length; j++) {
                if (tmpSctiptList.get(i).getScriptId().equals(scriptIdArr[j])) {
                    break;
                }
                if (j == scriptIdArr.length - 1) {
                    deleteScript.add(tmpSctiptList.get(i));
                }
            }
        }

        // 循环更新(需要呗删除的)
        for (int i = 0; i < deleteScript.size(); i++) {
            Script script = new Script();
            script.setScriptId(deleteScript.get(i).getScriptId());
            script.setBugId("");
            scriptService.updateScript(script);
        }

        // 循环更新(新增的)
        for (int i = 0; i < scriptIdArr.length; i++) {
            Script script = new Script();
            script.setScriptId(scriptIdArr[i]);
            script.setBugId(budId);
            scriptService.updateScript(script);
        }
        rspMap.put("success", true);
        return rspMap;
    }
}
