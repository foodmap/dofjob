package com.dreamflyer.fieldsystem.factory;

import com.dreamflyer.fieldsystem.interfaces.iManagerCreator;

public class Singleton {
	static{
		creator = new FieldManagerCreator();
	}
	
	private Singleton(){}

	public static iManagerCreator getInstance(String className)
	{
		Class c;
		try {
			c = Class.forName(className);
			if(creator == null)
				creator = (iManagerCreator)c.newInstance();
		} catch (ClassNotFoundException e) {} 
		catch (InstantiationException e) {} 
		catch (IllegalAccessException e) {}
		return creator;		
	}
	private static iManagerCreator creator = null; 
}
