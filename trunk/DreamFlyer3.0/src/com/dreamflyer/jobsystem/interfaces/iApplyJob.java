package com.dreamflyer.jobsystem.interfaces;

import java.util.*;

public interface iApplyJob {
	public List getMyApplyment(String studentid);
	public boolean addApplyment(String studentid,long jobid);
	public List getJob(String grade,int industry,int function,
			           int workyears,String sex,String city,String province);
	public List getIndustry();
	public List getFunction(int industry);
}
