package com.dreamflyer.loginsystem.interfaces;

import javax.servlet.http.HttpServletRequest;

public interface iLogin {
	public boolean login(String username, String password, 
			HttpServletRequest request);
}
