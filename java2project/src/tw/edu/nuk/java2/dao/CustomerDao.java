package tw.edu.nuk.java2.dao;

import java.util.List;
import java.util.Map;

import tw.edu.nuk.java2.model.Customer;

public interface CustomerDao {
	Customer get(long no);
	void saveOrUpdate(Customer newinfo);
	void delete(Customer newinfo);
	void delete(long no);
	List<Customer> search(Map<String,String> conditions);
}
