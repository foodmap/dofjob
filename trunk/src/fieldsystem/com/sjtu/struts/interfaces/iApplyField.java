package fieldsystem.com.sjtu.struts.interfaces;

import fieldsystem.com.sjtu.struts.model.user.Field;

public interface iApplyField {
	
	public abstract Field getField();
	public abstract void delApplyment();
	public abstract void addApplyment();
	public abstract void updApplyment();

}
