package com.dreamflyer.jobsystem.factory;



import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.dreamflyer.hibernate.HibernateSessionFactory;
import com.dreamflyer.jobsystem.*;
import com.dreamflyer.user.*;
import com.dreamflyer.jobsystem.interfaces.iApplyJob;
import com.dreamflyer.jobsystem.interfaces.iManageJob;

public class JobManager implements iApplyJob, iManageJob {

	public boolean addApplyment(String studentid,long jobid) {
		String sqlInd="";
		
		Session session = null; 
		Transaction tran = null;
		int insertEntities = -1;
		session = HibernateSessionFactory.getSession();
		tran = session.beginTransaction();
		tran.begin();
		Studentjob sj = new Studentjob();
		StudentjobId sji = new StudentjobId();
		Student s = new Student();
		s.setId(studentid);
		Job j = new Job();
		j.setId(jobid);
		sji.setJob(j);
		sji.setStudent(s);
		sj.setId(sji);
		//sji.s
		//sj.setId()
		//String sqlcmd="insert into studentjob values ("+studentid+","+jobid+")"; 
		//String oldvalue="";
		//insertEntities = session.createQuery( sqlcmd ).executeUpdate() ;
		session.save(sj);
		tran.commit();
		
		session.close();
		//factory.close();
		return true;
	}

	public List getMyApplyment(String studentid) {
		String sqlApp="";
		sqlApp += "and st.id = '"+studentid+"'";
		String sqlcmd=null;
		sqlApp = " and Student.id='"+studentid+"'";
		sqlcmd = "select job from Job as job,Studentjob as sj,Student as st ";
		sqlcmd += "where job.id=sj.id.job.id and sj.id.student.id=st.id ";
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
		//System.out.println(sqlcmd);
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
			          int workyears, String sex,  String city,String province) {
		String sqlGra,sqlInd,sqlFun,sqlWor,sqlSex,sqlSub,sqlCit,sqlPro;
		if(grade!=null&&grade!=""){
		    sqlGra=" and job.grade='"+grade+"'";
		}
		else{
			//sqlGra=" job.grade='*'";
			sqlGra=" ";
		}
		
		if(industry!=0){
		    sqlInd=" and ind.id="+industry;
		}
		else{
			sqlInd=" ";
		}
		
		if(function!=0){
		    sqlFun=" and fun.id="+function;
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
		sqlcmd = "select job from Job as job ,Industry as ind, Function as fun,Company as com where";
		sqlcmd +=" job.function.id = fun.id and job.industry.id=ind.id and " +
				 " job.company.id = com.id ";
		sqlcmd += sqlGra+sqlInd+sqlFun+sqlWor+sqlSex+sqlCit+sqlPro;
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

	public boolean addJob(String sex, String grade, int number, String subdate,
			int workyears, String other_requirements, String description,
			int companyid, int function, int industry) {
		String sqlInd="";
		
		Session session = null;
		Transaction tran = null;
		int insertEntities = -1;
		session = HibernateSessionFactory.getSession();
		tran = session.beginTransaction();
		tran.begin();
		int fid = function;
		int did = industry;
		/**
		String sqlcmd="insert into studentjob(sex,grade,number,subscribe_date,work_years,other_requirements,"
		        +"description,company_id,function_id,industry_id"+" ) " +
				"values ("+"'"+sex+"'"+","+"'"+grade+"'"+","+number+","+"'"+subdate+"'"+","
		        +workyears+","+"'"+other_requirements+"'"+","+"'"+description+"'"+","+companyid+","+fid
		        +","+did+")"; 
		String oldvalue="";
		insertEntities = session.createQuery( sqlcmd ).executeUpdate() ;
		**/
		Job job = new Job();
		Company com = new Company();
		com.setId(companyid);
		Industry ind = new Industry();
		ind.setId(industry);
		Function fun = new Function();
		fun.setId(function);
		DateFormat df = DateFormat.getDateInstance();
		Date date=new Date(2009,1,1);
		try {
			date = (df).parse(subdate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		job.setCompany(com);
		job.setDescription(description);
		job.setIndustry(ind);
		job.setFunction(fun);
		job.setGrade(grade);
		job.setNumber(number);
	    job.setOtherRequirements(other_requirements);
	    job.setSex(sex);
	    job.setSubscribeDate(date);
	    job.setWorkYears(workyears);
	    session.save(job);
		tran.commit();
		
		session.close();
		//factory.close();
		return true;
	}

	public List getJob(int companyid) {
		String sqlCom="";
		sqlCom += " and company.id = "+companyid;
		
		Session session = null;
		Transaction tran = null;
		session = HibernateSessionFactory.getSession();
		String sqlcmd=null;
		sqlcmd = "select job from Job as job ,Company as company where";
		sqlcmd +=" job.company.id = company.id ";
		sqlcmd += sqlCom;
		
		System.out.println(sqlcmd);
		List jobs  =  session.createQuery(sqlcmd).list(); 
		List jobinfo = new ArrayList();
		Iterator it = jobs.iterator();
		while(it.hasNext()){
			Job job = (Job)it.next();
			long id = job.getId();
			jobinfo.add(id);
			jobinfo.add(job.toString());
		}
		session.close();
		//factory.close();
		return jobinfo;
	}

	public List getStuApplyment(int companyid) {
        String sqlApp="";
		
		Session session = null;
		Transaction tran = null;
		session = HibernateSessionFactory.getSession();;
		String sqlcmd=null;
		sqlApp = " where sj.id.job.company.id="+companyid;
		sqlcmd = "select sj from Studentjob as sj";
		//sqlcmd += "where ";
		sqlcmd +=sqlApp;
		List sjs  =  session.createQuery(sqlcmd).list(); 
		List jobinfo = new ArrayList();
		Iterator it = sjs.iterator();
		while(it.hasNext()){
			Studentjob sj = (Studentjob)it.next();
			Job job = sj.getId().getJob();
			Student st = sj.getId().getStudent();
			jobinfo.add(st.getId());
			jobinfo.add(job.getId());
			jobinfo.add(job.getShortInfo());
			jobinfo.add(st.getShortInfo());
		}
		session.close();
		//factory.close();
		return jobinfo;
	}

	public boolean updJob(String sex, String grade, int number, String subdate,
			int workyears, String other_requirements, String description,
			int jobid) {
        String sqlInd="";
		
		Session session = null;
		Transaction tran = null;
		int insertEntities = -1;
		session = HibernateSessionFactory.getSession();
		tran = session.beginTransaction();
		String sqlcmd="update job " +"set "+"sex="+"'"+sex+"'"+","+"grade="+"'"+grade+"'"+","+"number="+number+","+"subscribe_date="+"'"+subdate+"'"+","
		              +"work_years="+workyears+","+"other_requirements="+"'"+other_requirements+"'"+","+"description="+"'"+description+"'"; 
		sqlcmd += " where id ="+jobid;
		String oldvalue="";
		insertEntities = session.createSQLQuery( sqlcmd ).executeUpdate();
		tran.commit();
		
		session.close();
		//factory.close();
		if(insertEntities==-1){
			return false;
		}
		else return true;
	}

	@Override
	public List getApplyers(long jobid) {
        String sqlApp="";
		Session session = null;
		Transaction tran = null;
		session = HibernateSessionFactory.getSession();;
		String sqlcmd=null;
		sqlApp = " and sj.id.job.id="+jobid;
		sqlcmd = "select st from Studentjob as sj,Student as st";
		sqlcmd += " where sj.id.student.id = st.id";
		sqlcmd += sqlApp;
		List sjs  =  session.createQuery(sqlcmd).list(); 
		List jobinfo = new ArrayList();
		Iterator it = sjs.iterator();
		while(it.hasNext()){
			Student st = (Student)it.next();
			jobinfo.add(st.getShortInfo());
			
		}
		session.close();
		//factory.close();
		return jobinfo;
	}

	

}
