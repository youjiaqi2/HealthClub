package dao.system;

import model.Activity;
import model.ResultMessage;

public interface  WaiterDao {
	public ResultMessage login(String position,String id,String password);
	public ResultMessage makeActivity(Activity activity);
}
