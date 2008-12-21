package com.dreamflyer.jobsystem.interfaces;

import java.util.*;

public interface iApplyJob {
	public List getMyApplyment(long studentid);
	public boolean addApplyment(long studentid,long jobid);
	public List getJob(String grade,long industry,long function,
			           int workyears,String sex,String city);
	public List getIndustry();
	public List getFunction(long industry);
}
