package com.dreamflyer.fieldsystem.factory;

import com.dreamflyer.fieldsystem.interfaces.iManagerCreator;

public class FieldManagerCreator implements iManagerCreator {

	@Override
	public AbstractManagers getManager() {
		FieldManager fieldManager = new FieldManager();
		return fieldManager;
	}

}
