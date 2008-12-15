package com.dreamflyer.jobsystem;

import java.util.Date;
import java.util.Set;
import com.dreamflyer.user.*;

/**
 * Job entity.
 * 
 * @author MyEclipse Persistence Tools
 */
public class Job extends AbstractJob implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Job() {
	}

	/** minimal constructor */
	public Job(Industry industry, Company company, Function function,
			Integer number, Date subscribeDate) {
		super(industry, company, function, number, subscribeDate);
	}

	/** full constructor */
	public Job(Industry industry, Company company, Function function,
			String sex, String grade, Integer number, Date subscribeDate,
			Integer workYears, String otherRequirements, String description,
			Set studentjobs) {
		super(industry, company, function, sex, grade, number, subscribeDate,
				workYears, otherRequirements, description, studentjobs);
	}

}
