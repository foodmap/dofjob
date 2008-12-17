package com.dreamflyer.jobsystem.interfaces;

import java.util.List;

public interface iManageJob {
	public List getJob(long companyid);
	public boolean addJob(String sex, String grade,int number,String subdate,int workyears,
			              String other_requirements,String description,long companyid,
			              String function,String industry);
	public boolean updJob(String sex, String grade,int number,String subdate,int workyears,
                          String other_requirements,String description,long jobid);
	public List getStuApplyment(long companyid);
	
}
