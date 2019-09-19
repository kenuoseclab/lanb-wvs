package com.colodoo.framework.quartz;

import com.alibaba.fastjson.JSON;
import org.quartz.Job;
import org.quartz.JobDataMap;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import com.colodoo.manager.task.task.model.Task;

public class JobClass implements Job {

	@Override
	public void execute(JobExecutionContext context) throws JobExecutionException {

		System.out.println("任务开始");

		// 取参数
		JobDataMap jobDataMap = context.getJobDetail().getJobDataMap();
		Task task = (Task) jobDataMap.get("task");

		System.out.println(JSON.toJSONString(task));

		// 扫描总数
		int taotalCount = 0;
		// 成功扫描数
		int successCount = 0;

		// 资产是否存在其他资产发现
		// ...

		// 如果存在其他资产发现,啧拓宽资产范围
		// ...

		// 计算扫描总数
		// ...
		// 遍历资产,根据脚本扫描资产
		// ...

		// 保存扫描结果
		// ...

		// 整理扫描日志
		// ..

		// 保存扫描日志
		// ...

	}

}
