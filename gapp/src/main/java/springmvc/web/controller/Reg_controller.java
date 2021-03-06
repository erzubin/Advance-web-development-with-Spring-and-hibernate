package springmvc.web.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.model.Members;
import springmvc.model.dao.DepartmentDao;
import springmvc.model.dao.RegDao;

@Controller
public class Reg_controller {


	@Autowired
    private RegDao Regdao;
	
	@RequestMapping(value={"/Registration/reg_form.html"} , method=RequestMethod.GET)
    public String dep_list()
    {
    	
        return "Registration/reg_form";
    }
	
	@RequestMapping(value={"/Registration/reg_form.html"} , method=RequestMethod.POST)
    public String dep_listpost( @RequestParam String f_name, @RequestParam String l_name, @RequestParam String email, @RequestParam String pass , ModelMap models)
    {   
		ArrayList<Members> email_list=   (ArrayList<Members>) Regdao.getMembers();
		Members m = new Members();
		for (Members members : email_list) {
			String s = members.getEmail().toString();
			if (s.equalsIgnoreCase(email))
			{
				 return "redirect:/Registration/reg_form.html";
			}
			else
			{
				m.setEmail(email);
			}
			
		}
    	m.setEmail(email);
    	
    	m.setFirst_name(f_name);
    	m.setLast_name(l_name);
    	m.setPassword(pass);
    	m.setUser(Regdao.getUser(3));
		Regdao.setMembers(m);
		 return "redirect:/";
    }

}
