package fieldsystem.com.sjtu.struts.model.user;

import java.util.Date;

/**
 * AbstractCompanyfields entity provides the base persistence definition of the
 * Companyfields entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public abstract class AbstractCompanyfields implements java.io.Serializable {

	// Fields

	private CompanyfieldsId id;
	private Date startTime;
	private Date endTime;

	// Constructors

	/** default constructor */
	public AbstractCompanyfields() {
	}

	/** full constructor */
	public AbstractCompanyfields(CompanyfieldsId id, Date startTime,
			Date endTime) {
		this.id = id;
		this.startTime = startTime;
		this.endTime = endTime;
	}

	// Property accessors

	public CompanyfieldsId getId() {
		return this.id;
	}

	public void setId(CompanyfieldsId id) {
		this.id = id;
	}

	public Date getStartTime() {
		return this.startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return this.endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

}