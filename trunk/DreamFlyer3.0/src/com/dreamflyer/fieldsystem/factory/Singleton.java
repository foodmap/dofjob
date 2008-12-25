package com.dreamflyer.fieldsystem.factory;

import com.dreamflyer.fieldsystem.interfaces.iManagerCreator;

public class Singleton {	
	private Singleton(){}

	public static iManagerCreator getInstance(String className)
	{
		Class c;
		try {
			c = Class.forName(className);
			if(creator == null)
				creator = (iManagerCreator)c.newInstance();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} 
		catch (InstantiationException e) {
			e.printStackTrace();
		} 
		catch (IllegalAccessException e) {
			e.printStackTrace();
		} finally {
			
		}
		return creator;		
	}
	private static iManagerCreator creator = null; 
}
