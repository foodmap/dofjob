package com.dreamflyer.jobsystem.factory;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.dreamflyer.hibernate.HibernateSessionFactory;
import com.dreamflyer.jobsystem.Function;
import com.dreamflyer.jobsystem.Industry;
import com.dreamflyer.jobsystem.Job;
import com.dreamflyer.jobsystem.interfaces.iApplyJob;
import com.dreamflyer.jobsystem.interfaces.iManageJob;

public class JobManager implements iApplyJob, iManageJob {

	public boolean addApplyment(String studentid,int jobid) {
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
		//factory.close();
		if(insertEntities==-1){
			return false;
		}
		else return true;
	}

	public List getMyApplyment(String studentid) {
		String sqlApp="";
		
		String sqlcmd=null;
		sqlApp = " and Student.id='"+studentid+"'";
		sqlcmd = "select Job.* from Job,Studentjob,Student ";
		sqlcmd += "where Job.id=Studentjob.job_id and Studentjob.student_id=Student.id ";
		sqlcmd +=sqlApp;
		Session ses = HibernateSessionFactory.getSession();
		
		//System.out.println("here1");
		Query  requery = ses.createQuery(sqlcmd);
		ArrayList jobs = (ArrayList)requery.list(); 
		List<String> jobinfo = new ArrayList<String>();
		Iterator it = jobs.iterator();
		while(it.hasNext()){
			Job job = (Job)it.next();
			long jobid = job.getId();
			jobinfo.add(""+jobid);
			jobinfo.add(job.toString());
		}
		ses.close();
		//factory.close();
		return jobinfo;
	} 

	public List getFunction(int industry) {
		String sqlInd="";
		Session ses = HibernateSessionFactory.getSession();

		String sqlcmd=null;
		
		sqlcmd = "select fun from Industryfunc as inf,Function as fun ";
		sqlcmd += "where inf.id.functionId=fun.id ";
		sqlcmd += "and inf.id.industryId="+industry;
		System.out.println(sqlcmd);
		//sqlcmd= "from Function f";
		//System.out.println("hahaha");
		Query  requery = ses.createQuery(sqlcmd);
		//System.out.println("hahaha");
		ArrayList funs = (ArrayList)requery.list(); 
		 
		List funinfo = new ArrayList<String>();
		//System.out.println("hahaha");
		Iterator it = funs.iterator();
		while(it.hasNext()){
			Function fun = (Function)it.next();
			funinfo.add(fun.getId());
			funinfo.add(fun.getName());
			//System.out.println(fun.getName());
		}
		ses.close();
		//factory.close();
		return funinfo;
	}

	public List getIndustry() {
		Session session = null;
		Transaction tran = null;
		//System.out.println("here1");
		Session ses = HibernateSessionFactory.getSession();
		String sqlcmd=null;
		sqlcmd = "from Industry a";
		//System.out.println("here1");
		Query  requery = ses.createQuery(sqlcmd);
		ArrayList inds = (ArrayList)requery.list(); 
		//System.out.println("here1");
		if(inds.size()==0){
			System.out.println("zero");
		}
		List indinfo = new ArrayList();
		Iterator it = inds.iterator();
		while(it.hasNext()){
			Industry ind = (Industry)it.next();
			indinfo.add(ind.getId());
			indinfo.add(ind.getName());
			//System.out.println(ind.getId());
			//System.out.println(ind.getName());
		}
		ses.close();
		//session.close();
		//factory.close();
		return indinfo;
	}

	public List getJob(String grade, int industry, int function,
			          int workyears, String sex,  String city) {
		String sqlGra,sqlInd,sqlFun,sqlWor,sqlSex,sqlSub,sqlCit;
		if(grade!=null&&grade!=""){
		    sqlGra=" and Job.grade='"+grade+"'";
		}
		else{
			//sqlGra=" job.grade='*'";
			sqlGra=" ";
		}
		
		if(industry!=0){
		    sqlInd=" and Industry.id="+industry;
		}
		else{
			sqlInd=" ";
		}
		
		if(function!=0){
		    sqlFun=" and Function.id="+function;
		}
		else{
			sqlFun=" ";
		}
		
		
		sqlWor=" and Job.work_years>="+workyears;
		if(sex!=null&&sex!=""){
		    sqlSex=" and Job.sex='"+sex+"'";
		}
		else{
			sqlSex=" ";
		}
		
		if(city!=null&&city!=""){
		    sqlCit=" and Company.city='"+city+"'";
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
		sqlcmd += sqlGra+sqlInd+sqlFun+sqlWor+sqlSex;
		
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
		//factory.close();
		return jobinfo;
	}

	public boolean addJob(String sex, String grade, int number, String subdate,
			int workyears, String other_requirements, String description,
			long companyid, long function, long industry) {
		String sqlInd="";
		Configuration conf = new Configuration().configure();
		SessionFactory factory = conf.buildSessionFactory();
		Session session = null;
		Transaction tran = null;
		int insertEntities = -1;
		session = factory.openSession();
		tran = session.beginTransaction();
		
		long fid = function;
		long did = industry;
		String sqlcmd="insert into studentjob(sex,grade,number,subscribe_date,work_years,other_requirements,"
		        +"description,company_id,function_id,industry_id"+" ) " +
				"values ("+"'"+sex+"'"+","+"'"+grade+"'"+","+number+","+"'"+subdate+"'"+","
		        +workyears+","+"'"+other_requirements+"'"+","+"'"+description+"'"+","+companyid+","+fid
		        +","+did+")"; 
		String oldvalue="";
		insertEntities = session.createQuery( sqlcmd ).executeUpdate() ;
		tran.commit();
		
		session.close();
		//factory.close();
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
		//factory.close();
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
		//factory.close();
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
		//factory.close();
		if(insertEntities==-1){
			return false;
		}
		else return true;
	}

	

}
