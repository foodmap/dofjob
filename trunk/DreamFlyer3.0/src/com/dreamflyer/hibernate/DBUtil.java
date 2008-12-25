package com.dreamflyer.hibernate;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.dreamflyer.jobsystem.Function;
import com.dreamflyer.jobsystem.Industry;

public class DBUtil {
	private static String url = "jdbc:mysql://localhost:3306/dreamflyer";
	private static String username = "root";
	private static String password = "2877026";
	private static String driver = "com.mysql.jdbc.Driver";
	private static List indinfo = null;
	private static List [] funinfo = new List[40];
	
	public static void configJDBCConn(String sdriver, String surl, 
			String susername, String spassword){
		driver = sdriver;
		url = surl;
		susername = username;
	}
	
	public static Connection getJDBCConn(){
		Connection conn = null;
		System.out.println("Load Driver successfully!");
		try{
			Class.forName(driver);							
			conn = DriverManager.getConnection(url,username,password);
			System.out.println("Connect mysql database successfully!");
		}catch(Exception e){
			e.printStackTrace();
		}
		return conn;
	}
	
	private static void init() {
		Session ses = HibernateSessionFactory.getSession();
		Transaction tx = ses.beginTransaction();
		
		//Get industry from database
		Query  requery = (Query) ses.createQuery("from Industry a");
		ArrayList inds = (ArrayList)requery.list(); 
		if(inds.size()==0){
			System.out.println("zero");
		}
		indinfo = new ArrayList();
		Iterator iti = inds.iterator();
		System.out.println("Industry");
		Industry ind = null;
		while(iti.hasNext()){
			ind = (Industry)iti.next();
			indinfo.add(ind.getId());
			indinfo.add(ind.getName());
			System.out.println(ind.getId());
			System.out.println(ind.getName());
		}
		
		tx.commit();
		ses.close();
	}
		
	public static List getIndustry() {
		if(indinfo == null) init();
		return indinfo;
	}
	
	public static List getFunction(int industryID) {
		if(funinfo[industryID] == null){
			funinfo[industryID] = new ArrayList();
			
			Session ses = HibernateSessionFactory.getSession();

			String sqlcmd="select fun from Industryfunc as inf,Function as fun "
				+ "where inf.id.functionId=fun.id "
				+ "and inf.id.industryId="+industryID;;
			
			Query  requery = ses.createQuery(sqlcmd);
			ArrayList funs = (ArrayList)requery.list(); 
			 
			Iterator it = funs.iterator();
			while(it.hasNext()){
				Function fun = (Function)it.next();
				funinfo[industryID].add(fun.getId());
				funinfo[industryID].add(fun.getName());
				System.out.println(fun.getId());
				System.out.println(fun.getName());
			}
			ses.close();
		}
		return (List)funinfo[industryID];
	}
	
}
