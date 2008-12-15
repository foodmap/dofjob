package com.dreamflyer.fieldsystem;

import com.dreamflyer.user.*;
/**
 * CompanyfieldsId entity.
 * 
 * @author DoF
 */
public class CompanyfieldsId extends AbstractCompanyfieldsId implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public CompanyfieldsId() {
	}

	/** full constructor */
	public CompanyfieldsId(Company company, Fields fields) {
		super(company, fields);
	}

}
