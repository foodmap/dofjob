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

	public String toString(){
		String info;
		info = "";
		info += "��ҵ: ";
		info += this.getIndustry().getName()+"   ";
		info += "ְ��: ";
		info += this.getFunction().getName()+"   ";
		info += "<br/>";
		info += "������˾�� ";
		info += "<br/>";
		info += this.getCompany().getShortInfo();
		info += "<br/>";
		info += "�����ص㣺";
		info += this.getCompany().getProvince();
		info += this.getCompany().getCity()+"   ";
		info += "<br/>";
		info += "ѧ��Ҫ��: "+this.getGrade()+"   ";
		info += "����Ҫ��: "+this.getWorkYears()+"��"+"   ";
		info += "�Ա�Ҫ��: "+this.getSex()+"   ";
		info += "��������: "+this.getNumber()+"   ";
		info += "��������: "+this.getSubscribeDate().toGMTString()+"   ";
		info += "<br/>";
		info += "����Ҫ��: "+this.getOtherRequirements()+"  ";
		info += "<br/>";
		info += "ְλ����: "+this.getDescription()+"  ";
		info += "<br/>";
		return info;
	}
	
	public String getShortInfo(){
		String info;
		info = "";
		
		info += "ְ��: ";
		info += this.getFunction().getName()+"   ";
		//info += "<br/>";
		info += "��������: "+this.getSubscribeDate().toGMTString()+"   ";
		return info;
	}
	
}
