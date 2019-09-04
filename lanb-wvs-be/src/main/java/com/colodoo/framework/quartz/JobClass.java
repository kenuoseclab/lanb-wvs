package com.colodoo.framework.quartz;

import org.quartz.Job;
import org.quartz.JobDataMap;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import com.colodoo.manager.task.task.model.Task;

public class JobClass implements Job {

	@Override
	public void execute(JobExecutionContext context) throws JobExecutionException {

		System.out.println("任务开始");

		JobDataMap jobDataMap = context.getJobDetail().getJobDataMap();
		Task task = (Task) jobDataMap.get("task");

	}

}
