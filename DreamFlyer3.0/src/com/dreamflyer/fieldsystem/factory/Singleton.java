package com.dreamflyer.fieldsystem.factory;

import com.dreamflyer.fieldsystem.interfaces.iManagerCreator;

public class Singleton {
	static{
		creator = new FieldManagerCreator();
	}
	
	private Singleton(){}

	public static iManagerCreator getInstance()
	{
		return creator;
	}
	private static iManagerCreator creator = null; 
}
