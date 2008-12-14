package fieldsystem.com.sjtu.struts.model.user;

import java.util.Date;

/**
 * Companyfields entity.
 * 
 * @author MyEclipse Persistence Tools
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
