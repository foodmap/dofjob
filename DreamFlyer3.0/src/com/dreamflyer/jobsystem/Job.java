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
		info += "行业: ";
		info += this.getIndustry().getName()+"   ";
		info += "职能: ";
		info += this.getFunction().getName()+"   ";
		info += "<br/>";
		info += "发布公司： ";
		info += "<br/>";
		info += this.getCompany().getShortInfo();
		info += "<br/>";
		info += "工作地点：";
		info += this.getCompany().getProvince();
		info += this.getCompany().getCity()+"   ";
		info += "<br/>";
		info += "学历要求: "+this.getGrade()+"   ";
		info += "经验要求: "+this.getWorkYears()+"年"+"   ";
		info += "性别要求: "+this.getSex()+"   ";
		info += "招收人数: "+this.getNumber()+"   ";
		info += "发布日期: "+this.getSubscribeDate().toGMTString()+"   ";
		info += "<br/>";
		info += "其他要求: "+this.getOtherRequirements()+"  ";
		info += "<br/>";
		info += "职位描述: "+this.getDescription()+"  ";
		info += "<br/>";
		return info;
	}
	
	public String getShortInfo(){
		String info;
		info = "";
		
		info += "职能: ";
		info += this.getFunction().getName()+"   ";
		//info += "<br/>";
		info += "发布日期: "+this.getSubscribeDate().toGMTString()+"   ";
		return info;
	}
	
}
