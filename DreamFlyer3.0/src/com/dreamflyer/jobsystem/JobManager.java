package com.dreamflyer.jobsystem;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.dreamflyer.jobsystem.interfaces.iApplyJob;
import com.dreamflyer.jobsystem.interfaces.iManageJob;

public class JobManager implements iApplyJob, iManageJob {

	public boolean addApplyment(long studentid,long jobid) {
		String sqlInd="";
		Configuration conf = new Configuration().configure();
		SessionFactory factory = conf.buildSessionFactory();
		Session session = null;
		Transaction tran = null;
		int insertEntities = -1;
		session = factory.openSession();
		tran = session.beginTransaction();
		
		String sqlcmd="insert into studentjob values ("+studentid+","+jobid+")"; 
		String oldvalue="";
		insertEntities = session.createQuery( sqlcmd ).executeUpdate() ;
		tran.commit();
		
		session.close();
		factory.close();
		if(insertEntities==-1){
			return false;
		}
		else return true;
	}

	public List getMyApplyment(long studentid) {
		String sqlApp="";
		Configuration conf = new Configuration().configure();
		SessionFactory factory = conf.buildSessionFactory();
		Session session = null;
		Transaction tran = null;
		session = factory.openSession();
		String sqlcmd=null;
		sqlApp = " and student.id="+studentid;
		sqlcmd = "select job.* from job,studentjob,student ";
		sqlcmd += "where job.id=studentjob.job_id and studentjob.student_id=student.id ";
		sqlcmd +=sqlApp;
		List<Job> jobs  =  session.createSQLQuery(sqlcmd).addEntity( "Job" , Job.class ).list(); 
		List<String> jobinfo = new ArrayList<String>();
		Iterator it = jobs.iterator();
		while(it.hasNext()){
			Job job = (Job)it.next();
			long jobid = job.getId();
			jobinfo.add(""+jobid);
			jobinfo.add(job.toString());
		}
		session.close();
		factory.close();
		return jobinfo;
	}

	public List getFunction(String industry) {
		String sqlInd="";
		Configuration conf = new Configuration().configure();
		SessionFactory factory = conf.buildSessionFactory();
		Session session = null;
		Transaction tran = null;
		session = factory.openSession();
		String sqlcmd=null;
		sqlcmd = "select fuction.* from industry";
		
		List<Function> funs  =  session.createSQLQuery(sqlcmd).addEntity( "Function" , Function.class ).list(); 
		List<String> funinfo = new ArrayList<String>();
		Iterator it = funs.iterator();
		while(it.hasNext()){
			Function fun = (Function)it.next();
			funinfo.add(fun.getName());
		}
		session.close();
		factory.close();
		return funinfo;
	}

	public List getIndustry() {
		Configuration conf = new Configuration().configure();
		SessionFactory factory = conf.buildSessionFactory();
		Session session = null;
		Transaction tran = null;
		session = factory.openSession();
		String sqlcmd=null;
		sqlcmd = "select * from industry";
		
		List<Industry> inds  =  session.createSQLQuery(sqlcmd).addEntity( "Industry" , Industry.class ).list(); 
		List<String> indinfo = new ArrayList<String>();
		Iterator it = inds.iterator();
		while(it.hasNext()){
			Industry ind = (Industry)it.next();
			indinfo.add(ind.getName());
		}
		session.close();
		factory.close();
		return indinfo;
	}

	public List getJob(String grade, String industry, String function,
			          int workyears, String sex, String subdate, String city) {
		String sqlGra,sqlInd,sqlFun,sqlWor,sqlSex,sqlSub,sqlCit;
		if(grade!=null&&grade!=""){
		    sqlGra=" and job.grade='"+grade+"'";
		}
		else{
			//sqlGra=" job.grade='*'";
			sqlGra=" ";
		}
		if(industry!=null&&industry!=""){
		    sqlInd=" and industry.name='"+industry+"'";
		}
		else{
			sqlInd=" ";
		}
		if(function!=null&&function!=""){
		    sqlFun=" and function.name='"+function+"'";
		}
		else{
			sqlFun=" ";
		}
		sqlWor=" and job.work_years>="+workyears;
		if(sex!=null&&sex!=""){
		    sqlSex=" and job.sex='"+sex+"'";
		}
		else{
			sqlSex=" ";
		}
		if(subdate!=null&&subdate!=""){
		    sqlSub=" and job.subscribe_date='"+subdate+"'";
		}
		else{
			sqlSub=" ";
		}
		if(city!=null&&city!=""){
		    sqlCit=" and company.city='"+city+"'";
		}
		else{
			sqlCit=" ";
		}
		Configuration conf = new Configuration().configure();
		SessionFactory factory = conf.buildSessionFactory();
		Session session = null;
		Transaction tran = null;
		session = factory.openSession();
		String sqlcmd=null;
		sqlcmd = "select job.* from job ,industry , function ,company where";
		sqlcmd +=" job.function_id = function.id and job.industry_id=industry.id and " +
				 " job.company_id = company.id ";
		sqlcmd += sqlGra+sqlInd+sqlFun+sqlWor+sqlSex+sqlSub;
		
		System.out.println(sqlcmd);
		List<Job> jobs  =  session.createSQLQuery(sqlcmd).addEntity( "Job" , Job.class ).list(); 
		List<String> jobinfo = new ArrayList<String>();
		Iterator it = jobs.iterator();
		while(it.hasNext()){
			Job job = (Job)it.next();
			long id = job.getId();
			jobinfo.add(""+id);
			jobinfo.add(job.toString());
		}
		session.close();
		factory.close();
		return jobinfo;
	}

	public boolean addJob(String sex, String grade, int number, String subdate,
			int workyears, String other_requirements, String description,
			long companyid, String function, String industry) {
		String sqlInd="";
		Configuration conf = new Configuration().configure();
		SessionFactory factory = conf.buildSessionFactory();
		Session session = null;
		Transaction tran = null;
		int insertEntities = -1;
		session = factory.openSession();
		tran = session.beginTransaction();
		Function f = (Function)(session.createSQLQuery("select function.* from function where name= '"+function+"'")
		             .addEntity( "Function" , Function.class ).list().get(0));
		Industry d = (Industry)(session.createSQLQuery("select Industry.* from Industry where name= '"+industry+"'")
	             .addEntity( "Industry" , Industry.class ).list().get(0));
		long fid = f.getId();
		long did = d.getId();
		String sqlcmd="insert into studentjob(sex,grade,number,subscribe_date,work_years,other_requirements,"
		        +"description,company_id,function_id,industry_id"+" ) " +
				"values ("+"'"+sex+"'"+","+"'"+grade+"'"+","+number+","+"'"+subdate+"'"+","
		        +workyears+","+"'"+other_requirements+"'"+","+"'"+description+"'"+","+companyid+","+fid
		        +","+did+")"; 
		String oldvalue="";
		insertEntities = session.createQuery( sqlcmd ).executeUpdate() ;
		tran.commit();
		
		session.close();
		factory.close();
		if(insertEntities==-1){
			return false;
		}
		else return true;
	}

	public List getJob(long companyid) {
		String sqlCom="";
		sqlCom += " and company.id = "+companyid;
		Configuration conf = new Configuration().configure();
		SessionFactory factory = conf.buildSessionFactory();
		Session session = null;
		Transaction tran = null;
		session = factory.openSession();
		String sqlcmd=null;
		sqlcmd = "select job.* from job ,company where";
		sqlcmd +=" job.company_id = company.id ";
		sqlcmd += sqlCom;
		
		System.out.println(sqlcmd);
		List<Job> jobs  =  session.createSQLQuery(sqlcmd).addEntity( "Job" , Job.class ).list(); 
		List<String> jobinfo = new ArrayList<String>();
		Iterator it = jobs.iterator();
		while(it.hasNext()){
			Job job = (Job)it.next();
			long id = job.getId();
			jobinfo.add(""+id);
			jobinfo.add(job.toString());
		}
		session.close();
		factory.close();
		return jobinfo;
	}

	public List getStuApplyment(long companyid) {
		String sqlApp="";
		Configuration conf = new Configuration().configure();
		SessionFactory factory = conf.buildSessionFactory();
		Session session = null;
		Transaction tran = null;
		session = factory.openSession();
		String sqlcmd=null;
		sqlApp = " and student.id="+companyid;
		sqlcmd = "select job.* from job,studentjob,student ";
		sqlcmd += "where job.id=studentjob.job_id and studentjob.student_id=student.id ";
		sqlcmd +=sqlApp;
		List<Job> jobs  =  session.createSQLQuery(sqlcmd).addEntity( "Job" , Job.class ).list(); 
		List<String> jobinfo = new ArrayList<String>();
		Iterator it = jobs.iterator();
		while(it.hasNext()){
			Job job = (Job)it.next();
			long jobid = job.getId();
			jobinfo.add(""+jobid);
			jobinfo.add(job.toString());
		}
		session.close();
		factory.close();
		return jobinfo;
	}

	public boolean updJob(String sex, String grade, int number, String subdate,
			int workyears, String other_requirements, String description,
			long jobid) {
		String sqlInd="";
		Configuration conf = new Configuration().configure();
		SessionFactory factory = conf.buildSessionFactory();
		Session session = null;
		Transaction tran = null;
		int insertEntities = -1;
		session = factory.openSession();
		tran = session.beginTransaction();
		String sqlcmd="update studentjob " +"set "+"sex="+"'"+sex+"'"+","+"grade="+"'"+grade+"'"+","+"number="+number+","+"subscribe_date="+"'"+subdate+"'"+","
		              +"workyears="+workyears+","+"other_requirements="+"'"+other_requirements+"'"+","+"description="+"'"+description+"'"; 
		sqlcmd += " where job_id ="+jobid;
		String oldvalue="";
		insertEntities = session.createQuery( sqlcmd ).executeUpdate() ;
		tran.commit();
		
		session.close();
		factory.close();
		if(insertEntities==-1){
			return false;
		}
		else return true;
	}

	

}
