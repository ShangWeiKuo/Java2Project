package tw.edu.nuk.java2.daoimpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import tw.edu.nuk.java2.dao.CustomerDao;
import tw.edu.nuk.java2.model.Customer;

@Component
public class HBMCustomerDao implements CustomerDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Customer get(long no) {
		return (Customer) sessionFactory.getCurrentSession().get(Customer.class, no);
	}

	@Override
	public void saveOrUpdate(Customer perinfo) {
		sessionFactory.getCurrentSession().saveOrUpdate(perinfo);
	}

	@Override
	public void delete(Customer perinfo) {
		sessionFactory.getCurrentSession().delete(perinfo);

	}

	@Override
	public void delete(long no) {
		Customer perinfo = get(no);
        if (perinfo != null) {
            delete(perinfo);
        }
	}

	@Override
	public List<Customer> search(Map<String,String> conditions) {
		
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Customer.class);
		for (Map.Entry<String, String> entry : conditions.entrySet()) {
			criteria.add(Restrictions.like(entry.getKey(), makeLikeString(entry.getValue())));
		}
		criteria.addOrder(Order.asc("no"));		
		
		return criteria.list();
	}
	
	private String makeLikeString(String str) {
		String retVal = str.replace("%", "");
		retVal = "%" + retVal + "%";
		
		return retVal;
	}

}