package com.dreamflyer.jobsystem.factory;

import com.dreamflyer.jobsystem.interfaces.iApplyJob;
import com.dreamflyer.jobsystem.interfaces.iJobManagerFactory;
import com.dreamflyer.jobsystem.interfaces.iManageJob;

public class JobManagerFactory implements iJobManagerFactory{

	
	
	public iManageJob getManager() {
		iManageJob manager = null;
		try {
			manager = (iManageJob)(Class.forName("com.dreamflyer.jobsystem.factory.JobManager").newInstance());
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return manager;
	}
	
}
