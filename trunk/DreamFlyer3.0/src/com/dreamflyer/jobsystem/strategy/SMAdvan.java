package com.dreamflyer.jobsystem.strategy;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;

import com.dreamflyer.hibernate.HibernateSessionFactory;
import com.dreamflyer.jobsystem.Job;

public class SMAdvan implements SearchMethod {

	@Override
	public List getJob(String grade, int industry, int function, int workyears,
			String sex, String city, String province) {
		String sqlGra,sqlInd,sqlFun,sqlWor,sqlSex,sqlSub,sqlCit,sqlPro;
		if(grade!=null&&grade!=""){
		    sqlGra=" and job.grade='"+grade+"'";
		}
		else{
			//sqlGra=" job.grade='*'";
			sqlGra=" ";
		}
		 
		if(industry!=0){
		    sqlInd=" and job.industry.id="+industry;
		}
		else{
			sqlInd=" ";
		}
		
		if(function!=0){
		    sqlFun=" and job.function.id="+function;
		}
		else{
			sqlFun=" ";
		}
		
		
		sqlWor=" and job.workYears>="+workyears;
		if(sex!=null&&sex!=""){
		    sqlSex=" and job.sex='"+sex+"'";
		}
		else{
			sqlSex=" ";
		}
		
		if(city!=null&&city!=""){
		    sqlCit=" and com.city='"+city+"'";
		}
		else{
			sqlCit=" ";
		}
		
		if(province!=null&&province!=""){
		    sqlPro=" and com.province='"+province+"'";
		}
		else{
			sqlPro=" ";
		}
		Session ses = HibernateSessionFactory.getSession();
		String sqlcmd=null;
		/**
		sqlcmd = "select job from Job as job ,Industry as ind, Function as fun,Company as com where";
		sqlcmd +=" job.function.id = fun.id and job.industry.id=ind.id and " +
				 " job.company.id = com.id ";
		sqlcmd += sqlGra+sqlInd+sqlFun+sqlWor+sqlSex+sqlCit+sqlPro;
		**/
		sqlcmd = "select job from Job as job where job.company.id in ";
		sqlcmd += "(";
		sqlcmd += "select com.id from Company as com where com.id= com.id";
		sqlcmd += sqlPro;
		sqlcmd +=sqlCit;
		sqlcmd += ")";
		sqlcmd += sqlGra+sqlInd+sqlFun+sqlWor+sqlSex;
		//sqlcmd = "select job from Job as job";
		System.out.println(sqlcmd);
		List jobs  =  ses.createQuery(sqlcmd).list(); 
		System.out.println(jobs.size());
		List jobinfo = new ArrayList<String>();
		Iterator it = jobs.iterator();
		while(it.hasNext()){
			Job job = (Job)it.next();
			long id = job.getId();
			jobinfo.add(""+id);
			jobinfo.add(job.toString());
		}
		ses.close();
		//factory.close();
		return jobinfo;
	}

}
