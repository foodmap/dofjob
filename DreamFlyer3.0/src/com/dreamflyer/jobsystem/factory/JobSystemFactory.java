package com.dreamflyer.jobsystem.factory;

import com.dreamflyer.jobsystem.interfaces.*;

public class JobSystemFactory {
	
	private static iJobApplyerFactory applyer = null;
	private static iJobManagerFactory manager = null;
	
	
	
	public static iJobApplyerFactory getApplyer(){
		if(applyer==null){
			try {
				applyer=(iJobApplyerFactory)(Class.forName("com.dreamflyer.jobsystem.factory.JobApplyerFactory").newInstance());
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
		}
		return applyer;
	}
	
    public static iJobManagerFactory getManager(){
    	if(manager==null){
			try {
				manager=(iJobManagerFactory)(Class.forName("JobManagerFactory").newInstance());
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
		}
		return manager;
	}
}
