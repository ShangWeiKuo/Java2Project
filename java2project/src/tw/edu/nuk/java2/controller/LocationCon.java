package tw.edu.nuk.java2.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tw.edu.nuk.java2.dao.LocationDao;
import tw.edu.nuk.java2.model.Location;

@Controller
public class LocationCon {
	

	@Autowired
	private LocationDao locationDao;
	
	@Autowired
	private SessionFactory sessionFactory;
	

    @RequestMapping(value="/index", method=RequestMethod.GET)
	public void sayHello() {
	}
	
   
    @RequestMapping(value="/insertlocation", method=RequestMethod.GET)
	public String setupInsertion(Model model) {
    	
    	LocationCon locinfo = new LocationCon();
    	model.addAttribute("locinfo", locinfo);
    	return "Insertlocation";
	}
    
    @RequestMapping(value="/insert", method=RequestMethod.POST)
	@Transactional
	public String doInsertion(@ModelAttribute("locinfo") Location locinfo, Model model) {
    	locationDao.saveOrUpdate(locinfo);  
		model.addAttribute("locname", locinfo.getName());
		model.addAttribute("loctime", locinfo.getTime());
		model.addAttribute("watcher", locinfo.getWatcher());
    	
    	return "redirect:query";
	}
    
    @RequestMapping(value="/update")
    @Transactional
	public String setupUpdateForm(Model model, @RequestParam(value="no", defaultValue="") String no) {
    	
    	Location locinfo = locationDao.get(Long.parseLong(no));
    	model.addAttribute("locinfo", locinfo);
    	return "Update";
	}
  
    @RequestMapping(value="/updateConfirm")
	@Transactional
	public String doUpdate(@ModelAttribute("locinfo") Location locinfo, Model model) {
    	locationDao.saveOrUpdate(locinfo);  
		model.addAttribute("locname", locinfo.getName());
		model.addAttribute("loctime", locinfo.getTime());
		model.addAttribute("watcher", locinfo.getWatcher());
		model.addAttribute("major", locinfo.getMajor());
    	
    	return "redirect:query";
	} 
  /*  
    @RequestMapping(value="/updateConfirm")
	@Transactional
	public String doUpdate(@ModelAttribute("customer") Customer customer, Model model){
    	
    	//Transaction tx = null;
    	Session session = null;
    	try {
			session = sessionFactory.getCurrentSession();
			//tx = session.getTransaction();
			//tx.begin();
			session.saveOrUpdate(customer);			
			//customerDao.saveOrUpdate(customer);  
			model.addAttribute("companyName", customer.getCompanyName());
			model.addAttribute("contactName", customer.getContactName());
			model.addAttribute("contactTitle", customer.getContactTitle());
			//tx.commit();
		} catch (HibernateException e) {
			try {
				//if (tx!=null) {
				//	tx.rollback();
				//}
				e.printStackTrace();
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} finally {
			if (session != null) {
				//session.close();
			}
		}
    	
    	return "redirect:query";
    }
    */
    
	@RequestMapping(value="/query")
	@Transactional
	public String doQuery(@RequestParam(value="locname", defaultValue="") String locname,
			@RequestParam(value="loctime", defaultValue="") String loctime,
			@RequestParam(value="watcher", defaultValue="") String watcher,
			@RequestParam(value="major", defaultValue="") String major,
			Model model) {
		Map<String, String> conditions = new HashMap<String,String>();
		conditions.put("locname", locname);
		conditions.put("loctime", loctime);
		conditions.put("watcher", watcher);
		conditions.put("major", major);
		
		model.addAttribute("locinfo", locationDao.search(conditions));
		model.addAttribute("locname", locname);
		model.addAttribute("loctime", loctime);
		model.addAttribute("watcher", watcher);
		model.addAttribute("major", major);
		
		return "Browse";
	}
	
	@RequestMapping(value="/delete")
	@Transactional
	public String doDeletion(@RequestParam(value="locname", defaultValue="") String locname,
			@RequestParam(value="loctime", defaultValue="") String loctime,
			@RequestParam(value="watcher", defaultValue="") String watcher,
			@RequestParam(value="major", defaultValue="") String major,
			@RequestParam(value="no", defaultValue="") String no,
			Model model, HttpServletResponse response) {
		
		locationDao.delete(Long.parseLong(no));
		model.addAttribute("locname", locname);
		model.addAttribute("loctime", loctime);
		model.addAttribute("watcher", watcher);
		model.addAttribute("major", major);
		model.addAttribute("no", no);
				
		return "redirect:query";
	}
	

} 