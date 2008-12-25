package com.dreamflyer.loginsystem.loginstrategy;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.dreamflyer.hibernate.HibernateSessionFactory;
import com.dreamflyer.loginsystem.interfaces.iLogin;
import com.dreamflyer.user.Student;

public class StudentLogin implements iLogin{

	public boolean login(String username, String password, HttpServletRequest request) {
		// TODO Auto-generated method stub
		Session ses = HibernateSessionFactory.getSession();
		Transaction tx = ses.beginTransaction();
	
		String sqlquery = "from Student a where a.id = '" +
				username +"'";
	
		Query  requery = ses.createQuery(sqlquery);
		ArrayList studentlist = (ArrayList)requery.list();
	
		tx.commit();
		ses.close();
	
		Student student = new Student();
			
		if(studentlist == null || studentlist.size() == 0){
			System.out.println("User name not exist!");
			return false;
		}
		student = (Student)studentlist.get(0);
		
		if(!password.equals(student.getPassword()))
		{
			System.out.println("Wrong Password!");
			return false;
		}
		
		HttpSession session = request.getSession();
		Object cur_user = (Object)session.getAttribute("current_user");
		
		if(cur_user != null){
			session.removeAttribute("current_user");
		}
		session.setAttribute("current_user", student);
		
		return true;
	}

}
