package com.dreamflyer.fieldsystem;

import java.util.Date;

/**
 * ComFieldsAddId entity.
 * 
 * @author MyEclipse Persistence Tools
 */
public class ComFieldsAddId extends AbstractComFieldsAddId implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public ComFieldsAddId() {
	}

	/** full constructor */
	public ComFieldsAddId(Integer companyId, Integer fieldsId, Date startTime,
			Date endTime, String address) {
		super(companyId, fieldsId, startTime, endTime, address);
	}

}
