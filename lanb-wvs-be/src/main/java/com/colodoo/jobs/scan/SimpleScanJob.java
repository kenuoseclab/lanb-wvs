package com.colodoo.jobs.scan;

import com.alibaba.fastjson.JSON;
import com.colodoo.framework.common.SessionObject;
import com.colodoo.manager.scan.scanResult.model.ScanResult;
import com.colodoo.manager.scan.scanResult.service.ScanResultService;
import com.colodoo.manager.task.taskAttr.model.TaskAttr;
import com.colodoo.manager.task.taskLog.model.TaskLog;
import com.colodoo.manager.task.taskLog.service.TaskLogService;
import com.colodoo.manager.task.taskLogDet.model.TaskLogDet;
import com.colodoo.manager.task.taskLogDet.service.TaskLogDetService;
import lombok.extern.slf4j.Slf4j;
import org.quartz.Job;
import org.quartz.JobDataMap;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import com.colodoo.manager.task.task.model.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;

@Component
@Slf4j
public class SimpleScanJob implements Job {

    @Autowired
    TaskLogService taskLogService;
    @Autowired
    TaskLogDetService taskLogDetService;
    @Autowired
    ScanResultService scanResultService;

    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {

        // 取参数
        JobDataMap jobDataMap = context.getJobDetail().getJobDataMap();
        Task task = (Task) jobDataMap.get("task");
        TaskLog taskLog = (TaskLog) jobDataMap.get("taskLog");
        List<TaskAttr> assetList = (List<TaskAttr>) jobDataMap.get("assets");
        List<TaskAttr> bugList = (List<TaskAttr>) jobDataMap.get("bugs");
        SessionObject sessionObject = (SessionObject) jobDataMap.get("sessionObject");
        String userId = sessionObject.getUser().getUserId();

        try {
           log.info(JSON.toJSONString(task));

            // 扫描总数
            int totalCount = 0;
            // 成功扫描数
            int successCount = 0;

            // 资产是否存在其他资产发现
            // ...
            // 如果存在其他资产发现,拓宽资产范围
            // ...

            // 计算扫描总数
            totalCount = assetList.size() * bugList.size();
            // 遍历资产,根据脚本扫描资产
            for (TaskAttr asset : assetList) {
                String assetId = asset.getTaskAttrValue();
                // 取资产信息
                // ...
                // 遍历所有脚本
                for (TaskAttr bug : bugList) {
                    String bugId = bug.getTaskAttrValue();
                    // 取漏洞列表
                    // ...
                    // 取漏洞脚本
                    // ...
                    // 根据脚本扫描
                    // ...
                    // 插入一条任务日志详情
                    TaskLogDet taskLogDet = new TaskLogDet();
                    taskLogDet.setTaskLogDetKey("bugId");
                    taskLogDet.setTaskLogDetValue(bugId);
                    taskLogDet.setTaskLogId(taskLog.getTaskLogId());
                    taskLogDet.setCreateUserId(userId);
                    taskLogDetService.saveTaskLogDet(taskLogDet);

                    // 扫描结果
                    ScanResult scanResult = new ScanResult();
                    scanResult.setBugId(bugId);
                    scanResult.setTaskLogId(taskLog.getTaskLogId());
                    int randomStatus = (int)(Math.random()*(2-0));
                    scanResult.setScanResult(String.valueOf(randomStatus));
                    scanResult.setCreateUserId(userId);
                    scanResult.setAssetId(assetId);
                    scanResultService.saveScanResult(scanResult);

                    successCount++;
                }
            }

            // 保存扫描结果
            // ...

            // 整理扫描日志
            String taskLogRemark = "扫描总数:" + totalCount + ",成功扫描:" + successCount + "";

            // 保存扫描日志
            // ...

            // 更新任务状态
            taskLog.setTaskLogStatus("3");
            taskLog.setFinishedTime(new Date());
            taskLog.setRemark(taskLogRemark);
            taskLogService.updateTaskLog(taskLog);
        } catch (Exception e) {
            log.error("扫描失败", e);
            // 更新任务状态
            taskLog.setTaskLogStatus("5");
            taskLog.setFinishedTime(new Date());
            taskLog.setRemark("扫描失败: " + e.getMessage());
            taskLogService.updateTaskLog(taskLog);
        }

    }

}
