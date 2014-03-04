package serviceImpl.system;

import dao.system.WaiterDao;
import model.Activity;
import model.ResultMessage;
import service.system.WaiterService;

public class WaiterServiceImpl implements WaiterService{
	private WaiterDao waiterDao;

	public WaiterDao getWaiterDao() {
		return waiterDao;
	}

	public void setWaiterDao(WaiterDao waiterDao) {
		this.waiterDao = waiterDao;
	}

	@Override
	public ResultMessage login(String position, String id, String password) {
		return waiterDao.login(position,id,password);
	}

	@Override
	public ResultMessage makeActivity(Activity activity) {
		// TODO Auto-generated method stub
		return null;
	}

}
