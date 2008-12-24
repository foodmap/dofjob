package com.dreamflyer.jobsystem.strategy;

import java.util.List;

public interface SearchMethod {
	public List getJob(String grade, int industry, int function,
	          int workyears, String sex,  String city,String province);
}
