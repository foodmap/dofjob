package com.dreamflyer.fieldsystem.factory;

import javax.servlet.http.HttpServletRequest;

import com.dreamflyer.user.Company;

public class Utility {
	
	public static String isLogin(HttpServletRequest request)
	{
		Company c = (Company)request.getSession().getAttribute("current_user");
		if( c == null )
			return null;
		return String.valueOf(c.getId().intValue());
	}

}
