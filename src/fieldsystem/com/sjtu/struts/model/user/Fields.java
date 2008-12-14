package fieldsystem.com.sjtu.struts.model.user;

import java.util.Set;

/**
 * Fields entity.
 * 
 * @author MyEclipse Persistence Tools
 */
public class Fields extends AbstractFields implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Fields() {
	}

	/** minimal constructor */
	public Fields(String address) {
		super(address);
	}

	/** full constructor */
	public Fields(String address, Set companyfieldses) {
		super(address, companyfieldses);
	}

}
