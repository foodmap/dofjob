package com.dreamflyer.jobsystem.interfaces;

import java.util.List;

public interface iManageJob {
	public List getJob(int companyid);
	public boolean addJob(String sex, String grade,int number,String subdate,int workyears,
			              String other_requirements,String description,int companyid,
			              int function,int industry);
	public boolean updJob(String sex, String grade,int number,String subdate,int workyears,
                          String other_requirements,String description,int jobid);
	public List getStuApplyment(int companyid);
	
}
