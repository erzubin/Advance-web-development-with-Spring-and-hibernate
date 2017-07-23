package springmvc.web.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import springmvc.model.Department;
import springmvc.model.OtherField;
import springmvc.model.Program;
import springmvc.model.dao.DepartmentDao;

@Controller
@SessionAttributes("dept")
public class Admin_dep_controller {

	@Autowired
    private DepartmentDao Dep_dao;
	
	//@RequestMapping({"index.html","/Admin/Admin_dep.html"})
	    @RequestMapping({"/Admin/Admin_dep.html"})
	    public String dep_list( ModelMap models)
	    {
	    	models.put( "Departments", Dep_dao.getDepartment());
	        return "Admin/Admin_dep";
	    }

	    @RequestMapping({"/Admin/view_dep_details.html"})
	    public String dep_details( @RequestParam int id, ModelMap models)
	    {
	    	models.put( "Department", Dep_dao.getDepartment(id));
	        return "Admin/view_dep_details";
	    }
	    
	    @RequestMapping(value="/Admin/AddDepartment.html",  method=RequestMethod.GET)
	    public String addDept(ModelMap models)
	    {
	        return "Admin/AddDepartment";
	    }
	    
	    @RequestMapping(value="/Admin/AddDepartment.html",  method=RequestMethod.POST)
	    public String addDeptPost(@RequestParam String deptName)
	    {
	    	Department dept = new Department();
	    	dept.setDepartment_name(deptName);
	    	Department newDept = Dep_dao.addDept(dept);
	        return "redirect:AddProgram.html?deptid="+newDept.getId();
	    }
	    
	    @RequestMapping(value="/Admin/AddProgram.html",  method=RequestMethod.GET)
	    public String addProgram(@RequestParam int deptid, ModelMap models)
	    {
	    	models.put("dept", Dep_dao.getDepartment(deptid));
	        return "Admin/AddProgram";
	    }
	    
	    @RequestMapping(value="/Admin/AddProgram.html",  method=RequestMethod.POST)
	    public String addProgramPost(@RequestParam(required=false) String programName, @RequestParam int deptid ,@RequestParam(required=false) String OtherFeildName ,  
	    							 @RequestParam(required=false)String OtherFeildType, @RequestParam(required=false) String RequiredOrNot, SessionStatus status)
	    {
	    	Department dept = Dep_dao.getDepartment(deptid);
	    	
	    	if(programName != null)
	    	{
	    		
		    	 Program newProgram = new Program();
		    	 newProgram.setProgram_name(programName);
		    	 
	            newProgram.setDept(dept);	    	
		    	 newProgram = Dep_dao.addProgram(newProgram);
		    	 
		    	 if(dept.getProgram().size() == 0) {
		    		 List<Program> p = new ArrayList<Program>();
		    		 
		    		 p.add(newProgram);
		    		 dept.setProgram(p);
		    	 } else {
		    		 dept.getProgram().add(newProgram);
		    	 }
		    	 
		    	 Dep_dao.addDept(dept);
	    	}
	    	
	    	if(OtherFeildName != null)
	    	{
	    		
	    	 OtherField otherfield = new OtherField();
	    	 otherfield.setNamefield(OtherFeildName);
	    	 otherfield.setDepartment(dept);
	    	 otherfield.setRequired(RequiredOrNot.equals("required") ? true : false);
	    	 otherfield.setTypefield(OtherFeildType);
	    	 otherfield=Dep_dao.addOtherField(otherfield);
	    
	    	 if(dept.getProgram().size() == 0) {
	    		 List<OtherField> p = new ArrayList<OtherField>();
	    		 
	    		 p.add(otherfield);
	    		 dept.setOtherField(p);
	    	 } else {
	    		 dept.getOtherField().add(otherfield);
	    	 }
	    	 System.out.println("id :" + dept.getId() + "name " + dept.getDepartment_name() + "program size " +dept.getProgram().size());
	    	 Dep_dao.addDept(dept);
	    	 
	    	}
	    	 return "redirect:AddProgram.html?deptid=" +dept.getId();
	    	 }
	    

	    @RequestMapping(value="/Admin/Edit_details.html",  method=RequestMethod.GET)
	    public String edit_dept(@RequestParam int id , ModelMap models)
	    {
	    	models.put("dept", Dep_dao.getDepartment(id));
	    	
	        return "Admin/Edit_details";
	    }
	    
	    
	    @RequestMapping(value="/Admin/Edit_details.html",  method=RequestMethod.POST)
	    public String edit_dept_post(@RequestParam String deptName, @RequestParam int id , ModelMap models)
	    {
	    	Department dept = new Department();
	    	dept = Dep_dao.getDepartment(id);
	    	dept.setDepartment_name(deptName);
	    	 Dep_dao.addDept(dept);
	       
	    	
	    	 return "redirect:Edit_dep_program.html?id="+dept.getId()+"";
	    }
	    
	    @RequestMapping(value="/Admin/Edit_dep_program.html",  method=RequestMethod.GET)
	    public String edit_dept_program(@RequestParam int id , ModelMap models)
	    {
	    	models.put("dept", Dep_dao.getDepartment(id));
	    	
	        return "Admin/Edit_dep_program";
	    }
	    
	    @RequestMapping(value="/Admin/Edit_dep_program.html",  method=RequestMethod.POST)
	    public String edit_dept_programpost(@RequestParam int id ,@RequestParam(required=false) String progName, @RequestParam(required=false) String OtherFeildName ,  
				 @RequestParam(required=false)String OtherFeildType, @RequestParam(required=false) String RequiredOrNot, ModelMap models)
	    {
	    	Department dept = Dep_dao.getDepartment(id);
	    	if(progName != null){
	    	
	    	 Program newProgram = new Program();
	    	 newProgram.setProgram_name(progName);
	    	 
           newProgram.setDept(dept);	    	
	    	 newProgram = Dep_dao.addProgram(newProgram);
	    	 if(dept.getProgram().size() == 0) {
	    		 List<Program> p = new ArrayList<Program>();
	    		 
	    		 p.add(newProgram);
	    		 dept.setProgram(p);
	    	 } else {
	    		 dept.getProgram().add(newProgram);
	    	 }
	    	 System.out.println("id :" + dept.getId() + "name " + dept.getDepartment_name() + "program size " +dept.getProgram().size());
	    	 Dep_dao.addDept(dept);
	    	 //status.setComplete();
	    	}
	    	
	    	if(OtherFeildName != null)
	    	{
	    		 OtherField otherfield = new OtherField();
		    	 otherfield.setNamefield(OtherFeildName);
		    	 otherfield.setDepartment(dept);
		    	 otherfield.setRequired(RequiredOrNot.equals("required") ? true : false);
		    	 otherfield.setTypefield(OtherFeildType);
		    	 otherfield=Dep_dao.addOtherField(otherfield);
		    
		    	 if(dept.getProgram().size() == 0) {
		    		 List<OtherField> p = new ArrayList<OtherField>();
		    		 
		    		 p.add(otherfield);
		    		 dept.setOtherField(p);
		    	 } else {
		    		 dept.getOtherField().add(otherfield);
		    	 }
		    	 System.out.println("id :" + dept.getId() + "name " + dept.getDepartment_name() + "program size " +dept.getProgram().size());
		    	 Dep_dao.addDept(dept);
		    	 
	    	}
	    	 return "redirect:Edit_dep_program.html?id=" +id;
	    	
	      
	    }
	    
	    
	    @RequestMapping(value="/Admin/Delete_prog.html",  method=RequestMethod.GET)
	    public String edit_dept_prog_name(@RequestParam int progid , @RequestParam int deptid , ModelMap models)
	    {
	    	
	    	
	    	Dep_dao.removeProgram(progid);
	    	 
	        return "redirect:Edit_dep_program.html?id="+deptid;
	    }
	    
	    @RequestMapping(value="/Admin/Delete_Otherfield.html", method=RequestMethod.GET) 
	    	public String removeField(@RequestParam int otherfield, @RequestParam Integer deptid) {
	    	Dep_dao.removeOtherfield(otherfield);
	    	return "redirect:Edit_dep_program.html?id="+deptid;
	    }
	   
	    
}
