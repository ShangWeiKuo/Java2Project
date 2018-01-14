package tw.edu.nuk.java2.dao;

import java.util.List;
import java.util.Map;

import tw.edu.nuk.java2.controller.LocationCon;
import tw.edu.nuk.java2.model.Customer;
import tw.edu.nuk.java2.model.Location;

public interface LocationDao {
	Location get(long no);
	void saveOrUpdate(Location locinfo);
	void delete(Location locinfo);
	void delete(long no);
	List<Location> search(Map<String,String> conditions);
	
}
