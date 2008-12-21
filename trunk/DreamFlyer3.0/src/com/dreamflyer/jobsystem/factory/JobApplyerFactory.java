package com.dreamflyer.jobsystem.factory;

import com.dreamflyer.jobsystem.interfaces.iApplyJob;
import com.dreamflyer.jobsystem.interfaces.iJobApplyerFactory;

public class JobApplyerFactory implements iJobApplyerFactory{

	private JobApplyerFactory(){
		
	};
	
	public iApplyJob getApplyer() {
		iApplyJob applyer = null;
		try {
			applyer = (iApplyJob)(Class.forName("JobManager").newInstance());
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
