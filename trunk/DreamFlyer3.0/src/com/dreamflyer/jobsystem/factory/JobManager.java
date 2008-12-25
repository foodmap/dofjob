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
import com.dreamflyer.hibernate.DBUtil;
import com.dreamflyer.jobsystem.*;
import com.dreamflyer.user.*;
import com.dreamflyer.jobsystem.interfaces.iApplyJob;
import com.dreamflyer.jobsystem.interfaces.iManageJob;
import com.dreamflyer.jobsystem.strategy.SearchMethod;

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
		//sqlApp = " and Student.id='"+studentid+"'";
		/** tmp
		sqlcmd = "select job from Job as job,Studentjob as sj,Student as st ";
		sqlcmd += "where job.id=sj.id.job.id and sj.id.student.id=st.id ";
		sqlcmd += sqlApp;
		**/
		sqlcmd = "select job from Job as job where job.id in ";
		sqlcmd += "(";
		sqlcmd += "select sj.id.job.id from Studentjob as sj where sj.id.student.id in";
		sqlcmd += "(";
		sqlcmd += " select st.id from Student as st where ";
		sqlcmd += "st.id = '"+studentid+"'";
		sqlcmd += ")";
		sqlcmd += ")";
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
		
		return DBUtil.getFunction(industry);
	}

	public List getIndustry() {
		
		return DBUtil.getIndustry();
	}

	public List getJob(String grade, int industry, int function,
			          int workyears, String sex,  String city,String province) {
		try {
			SearchMethod sm = (SearchMethod)Class.forName("com.dreamflyer.jobsystem.strategy.SMAdvan")
			                       .newInstance();
			return sm.getJob(grade, industry, function, workyears, sex, city, province);
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
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
		/**
		sqlcmd = "select job from Job as job ,Company as company where";
		sqlcmd +=" job.company.id = company.id ";
		sqlcmd += sqlCom;
		**/
		sqlcmd = "select job from Job as job where job.company.id in ";
		sqlcmd += "(";
		sqlcmd += "select company.id from Company as company where ";
		sqlcmd += " company.id = "+companyid;
		sqlcmd += ")";
		
		System.out.println(sqlcmd);
		List jobs  =  session.createQuery(sqlcmd).list(); 
		List jobinfo = new ArrayList();
		Iterator it = jobs.iterator();
		while(it.hasNext()){
			Job job = (Job)it.next();
			long id = job.getId();
			jobinfo.add(id);
			jobinfo.add(job.getShortInfo());
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
		/**
		sqlcmd = "select st from Studentjob as sj,Student as st";
		sqlcmd += " where sj.id.student.id = st.id";
		sqlcmd += sqlApp;
		**/
		sqlcmd = "select st from Student as st where st.id in ";
		sqlcmd += "(";
		sqlcmd += "select sj.id.student.id from Studentjob as sj where sj.id.job.id ="+jobid;
		sqlcmd += ")";
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
