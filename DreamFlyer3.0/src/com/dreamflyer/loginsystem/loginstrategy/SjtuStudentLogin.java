package com.dreamflyer.loginsystem.loginstrategy;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.dreamflyer.hibernate.SHibernateSessionFactory;
import com.dreamflyer.loginsystem.interfaces.iLogin;
import com.dreamflyer.user.SjtuStudent;

public class SjtuStudentLogin implements iLogin {

	public boolean login(String username, String password,
			HttpServletRequest request) {
		Session ses = SHibernateSessionFactory.getSession();
		Transaction tx = ses.beginTransaction();

		String sqlquery = "from SjtuStudent a where a.studentId = '" + username + "'";

		Query requery = ses.createQuery(sqlquery);
		ArrayList studentlist = (ArrayList) requery.list();

		tx.commit();
		ses.close();

		SjtuStudent student = new SjtuStudent();

		if (studentlist == null || studentlist.size() == 0) {
			System.out.println("User name not exist!");
			return false;
		}
		student = (SjtuStudent) studentlist.get(0);

		if (!password.equals(student.getPassword())) {
			System.out.println("Wrong Password!");
			return false;
		}

		HttpSession session = request.getSession();
		SjtuStudent cur_user = (SjtuStudent) session
				.getAttribute("current_user");

		if (cur_user != null) {
			session.removeAttribute("current_user");
		}
		session.setAttribute("current_user", student);

		return true;
	}

}
