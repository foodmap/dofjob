package com.dreamflyer.fieldsystem;

import java.util.Date;

/**
 * Companyfields entity.
 * 
 * @author DoF
 */
public class Companyfields extends AbstractCompanyfields implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Companyfields() {
	}

	/** full constructor */
	public Companyfields(CompanyfieldsId id, Date startTime, Date endTime) {
		super(id, startTime, endTime);
	}

}
