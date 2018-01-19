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

import tw.edu.nuk.java2.dao.CustomerDao;
import tw.edu.nuk.java2.model.Customer;

@Controller
public class ServiceFacade {
	

	@Autowired
	private CustomerDao customerDao;
	
	/*@Autowired
	private LocationDao locationDao;*/
	
	@Autowired
	private SessionFactory sessionFactory;
	

    @RequestMapping(value="/", method=RequestMethod.GET)
	public String sayHello() {
    	return "index";
	}
	
    @RequestMapping(value="/insert", method=RequestMethod.GET)
	public String setupInsertion(Model model) {
    	
    	Customer newinfo = new Customer();
    	model.addAttribute("newinfo", newinfo);
    	/*Location locinfo = new Location();
    	model.addAttribute("locinfo", locinfo);*/
    	return "Insert";
	}
    
    @RequestMapping(value="/insert", method=RequestMethod.POST)
	@Transactional
	public String doInsertion(@ModelAttribute("newinfo") Customer newinfo, Model model) {
    	customerDao.saveOrUpdate(newinfo);  
		model.addAttribute("name", newinfo.getName());
		model.addAttribute("phone", newinfo.getPhone());
		model.addAttribute("location", newinfo.getLocation());
		model.addAttribute("content", newinfo.getContent());
    	
    	return "redirect:query"; // query
	}
    
    @RequestMapping(value="/update")
    @Transactional
	public String setupUpdateForm(Model model, @RequestParam(value="no", defaultValue="") String no) {
    	
    	Customer newinfo = customerDao.get(Long.parseLong(no));
    	model.addAttribute("newinfo", newinfo);
    	return "Update";
	}
  
    @RequestMapping(value="/updateConfirm")
   	@Transactional
   	public String doUpdate(@ModelAttribute("newinfo") Customer newinfo, Model model) {
       	customerDao.saveOrUpdate(newinfo);  
   		model.addAttribute("name", newinfo.getName());
   		model.addAttribute("phone", newinfo.getPhone());
   		model.addAttribute("location", newinfo.getLocation());
   		model.addAttribute("content", newinfo.getContent());
       	
       	return "redirect:query"; // query
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
	public String doQuery(@RequestParam(value="name", defaultValue="") String name,
			@RequestParam(value="phone", defaultValue="") String phone,
			@RequestParam(value="location", defaultValue="") String location,
			@RequestParam(value="content", defaultValue="") String content,
			
			Model model) {
		Map<String, String> conditions = new HashMap<String,String>();
		conditions.put("name", name);
		conditions.put("phone", phone);
		conditions.put("location", location);
		conditions.put("content", content);
		
		model.addAttribute("newinfo", customerDao.search(conditions));
		model.addAttribute("name", name);
		model.addAttribute("phone", phone);
		model.addAttribute("location", location);
		model.addAttribute("content", content);
		
		return "Browse";
	}
	
	@RequestMapping(value="/delete")
	@Transactional
	public String doDeletion(@RequestParam(value="name", defaultValue="") String name,
			@RequestParam(value="phone", defaultValue="") String phone,
			@RequestParam(value="location", defaultValue="") String location,
			@RequestParam(value="content", defaultValue="") String content,
			@RequestParam(value="no", defaultValue="") String no,
			Model model, HttpServletResponse response) {
		
		customerDao.delete(Long.parseLong(no));
		model.addAttribute("name", name);
		model.addAttribute("phone", phone);
		model.addAttribute("location", location);
		model.addAttribute("content", content);
		model.addAttribute("no", no);
				
		return "redirect:query"; // query
	}
}