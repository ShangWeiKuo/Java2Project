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

import tw.edu.nuk.java2.dao.LocationDao;
import tw.edu.nuk.java2.model.Location;

@Component
public class HBMLocationDao implements LocationDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Location get(long no) {
		return (Location) sessionFactory.getCurrentSession().get(Location.class, no);
	}

	@Override
	public void saveOrUpdate(Location locinfo) {
		sessionFactory.getCurrentSession().saveOrUpdate(locinfo);
	}

	@Override
	public void delete(Location locinfo) {
		sessionFactory.getCurrentSession().delete(locinfo);

	}

	@Override
	public void delete(long no) {
		Location locinfo = get(no);
        if (locinfo != null) {
            delete(locinfo);
        }
	}

	@Override
	public List<Location> search(Map<String,String> conditions) {
		
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Location.class);
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