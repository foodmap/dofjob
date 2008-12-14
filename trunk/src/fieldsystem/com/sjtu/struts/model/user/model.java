package fieldsystem.com.sjtu.struts.model.user;

import java.util.Observable;
import java.util.Observer;

public class model extends Observable{
	public model()
    {
        super();
    }
    
    public void addView(view view)
    {
        addObserver((Observer) view);
    }
    
    public void deleteView(view view)
    {
        deleteObserver((Observer) view);
    }
    
    public void notifyViews()
    {
        setChanged();
        notifyObservers();
    }
}
