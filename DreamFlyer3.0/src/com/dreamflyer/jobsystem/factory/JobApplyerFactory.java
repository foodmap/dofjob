package com.dreamflyer.jobsystem.factory;

import com.dreamflyer.jobsystem.interfaces.iApplyJob;
import com.dreamflyer.jobsystem.interfaces.iJobApplyerFactory;

public class JobApplyerFactory implements iJobApplyerFactory{

	
	
	public iApplyJob getApplyer() {
		iApplyJob applyer = null;
		try {
			applyer = (iApplyJob)(Class.forName("com.dreamflyer.jobsystem.factory.JobManager").newInstance());
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
		return applyer;
	}

}
