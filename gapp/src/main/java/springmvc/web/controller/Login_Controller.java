package springmvc.web.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import antlr.collections.List;
import springmvc.model.Members;
import springmvc.model.dao.DepartmentDao;
import springmvc.model.dao.LoginDao;
import springmvc.model.dao.RegDao;


@Controller
public class Login_Controller {
	
	
	@Autowired
    private LoginDao Login_dao;
	
	@RequestMapping(value={"index.html","/Login/Login.html"} , method=RequestMethod.GET)
    public String dep_list( )
    {
        return "Login/Login";
    }


	@RequestMapping(value={"index.html","/Login/Login.html"} , method=RequestMethod.POST)
    public String dep_listpost(@RequestParam String username , @RequestParam String pass, ModelMap models )
    {
		ArrayList<Members> m=   (ArrayList<Members>) Login_dao.getMembers(username , pass);
		
		if(m.size() == 0){
        return "Login/Login";
		}
		else if(( m.get(0).getUser().getUser_type()).equals("admin"))
		{
			 return "redirect:Admin/Admin_dep.html";
		}
		else if(( m.get(0).getUser().getUser_type()).equals("staff"))
		{
			 return "redirect:Staff/staff_form.html";
		}
		else if(( m.get(0).getUser().getUser_type()).equals("student"))
		{
			 return "redirect:Student/Student.html?sid="+m.get(0).getId();
		}
		return "Login/Login";
		}
}
