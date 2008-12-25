package com.dreamflyer.loginsystem.loginstrategy;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.dreamflyer.hibernate.HibernateSessionFactory;
import com.dreamflyer.user.Company;

public class CompanyLogin {
	public boolean login(String username, String password, HttpServletRequest request) {
		// TODO Auto-generated method stub
		Session ses = HibernateSessionFactory.getSession();
		Transaction tx = ses.beginTransaction();
	
		String sqlquery = "from Company a where a.username = '" +
				username +"'";
	
		Query  requery = ses.createQuery(sqlquery);
		ArrayList companylist = (ArrayList)requery.list();
	
		tx.commit();
		ses.close();
	
		Company company = new Company();
			
		if(companylist == null || companylist.size() == 0){
			System.out.println("User name not exist!");
			return false;
		}
		company = (Company)companylist.get(0);
		
		if(!password.equals(company.getPassword()))
		{
			System.out.println("Wrong Password!");
			return false;
		}
		
		HttpSession session = request.getSession();
		Object cur_user = (Object)session.getAttribute("current_user");
		
		if(cur_user != null){
			session.removeAttribute("current_user");
		}
		session.setAttribute("current_user", company);
		
		return true;
	}
}
