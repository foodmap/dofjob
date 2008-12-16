package com.dreamflyer.jobsystem.interfaces;

import java.util.*;

public interface iApplyJob {
	public List getMyApplyment(long studentid);
	public boolean addApplyment(long studentid,long jobid);
	public List getJob(String grade,String industry,String function,
			           int workyears,String sex,String subdate,String city);
	public List getIndustry();
	public List getFunction(String industry);
}
