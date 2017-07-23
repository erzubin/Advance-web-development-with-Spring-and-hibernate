package springmvc.web.controller;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import springmvc.model.Application;
import springmvc.model.Application_Status;
import springmvc.model.Degree_of_University;
import springmvc.model.Department;
import springmvc.model.Program;
import springmvc.model.dao.ApplicationDao;
import springmvc.model.dao.DepartmentDao;
import springmvc.model.dao.UserDao;

@Controller
@EnableWebMvc
public class Student_Controller {
	@Autowired
	ApplicationDao applicationDao;
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	DepartmentDao Dept_Dao;
	
	@Autowired
	ServletContext context;
	
	private static final ObjectMapper objectMapper = new ObjectMapper();
	
	private File getFileDirectory()
	{
		String path = context.getRealPath("/WEB-INF/files");
		return new File(path);
	}
	@RequestMapping(value={"/Student/Student.html"})
    public String student( @RequestParam int sid, ModelMap models)
    {
		models.put("applications", applicationDao.getStudentApplications(userDao.getMember(sid)));
		
        return "Student/Student";
    }


	 @RequestMapping(value="/Student/stu_application.html",  method=RequestMethod.GET)
	    public String getDept_DropDown(ModelMap models)
	    {
		 models.put("dept", Dept_Dao.getDepartment());
		 
		 return "Student/stu_application";
	    }
	 
	 
	 @RequestMapping(value="/Student/stu_application.html",  method=RequestMethod.POST)
	    public String getDept_DropDownPost(@RequestParam MultipartFile file1 ,@RequestParam Integer dept ,@RequestParam Integer prog,
	    		@RequestParam String[] college ,@RequestParam Integer[] start_year ,@RequestParam Integer[] end_year, @RequestParam String[] degree,
	    		@RequestParam String[] major,@RequestParam Integer cin ,@RequestParam Long phone ,@RequestParam String b_date,
	    		@RequestParam Integer gre, @RequestParam String f_name, @RequestParam String l_name , @RequestParam Integer student_id, @RequestParam String gender ,@RequestParam Double gpa ,@RequestParam String citizenship,@RequestParam String term ,@RequestParam(required=false) String add) throws IllegalStateException, IOException 
	    {
		 System.out.println(file1);
		 System.out.println(add);
		 
		 
		 
		 
		 
		 Application_Status s = applicationDao.getApp_status("New");
		 
		
		 Application app =  new Application();
		 
		 app.setFirst_name(f_name);
		 app.setLast_name(l_name);
		app.setApp_status(s);
		 app.setBirth_date(b_date);
		 if(cin != null){

			 app.setCIN(cin);
		 } 
	    app.setCitizenship(citizenship);
		 
		app.setDate(new Date());
		app.setDepartment(Dept_Dao.getDepartment(dept));
		
		app.setGender(gender);
		if(gpa != null)
		 app.setGpa(gpa);
		if(gre != null)
		 app.setGre(gre);
		app.setMembers(userDao.getMember(student_id));
		if(phone != null)
		 app.setPhone_number(phone);
		
		app.setProgram(Dept_Dao.getProgram(prog));
	
		app.setTerm_name(term);
		
		app.setSaveorsubmit(add != null ? true: false);
		Application Appli = applicationDao.save_app(app);
		
		List<Degree_of_University> degrees = new ArrayList<Degree_of_University>();
		 
		for(int i = 0; i < college.length; i++) {
			if(start_year[i] == null)
			{
				start_year[i] = 0;
			}
			if(end_year[i] == null)
			{
				end_year[i]= 0;
			}
			 degrees.add(Dept_Dao.saveDegree_of_University(new Degree_of_University(college[i], start_year[i], end_year[i], major[i], degree[i], Appli)));
		 }
		 Appli.setDegree_uni(degrees);
		 if (file1.getOriginalFilename().length() > 0) {
		System.out.println("original file name" + file1.getOriginalFilename().split(".").length);
		String filenames [] = file1.getOriginalFilename().split("\\.");
		 filenames[0] += "_"+Appli.getId()+".";
		 
		 
		 String filename = filenames[0] + filenames[1];
		 file1.transferTo(new File(getFileDirectory(),filename));		 
		 Appli.setFile(getFileDirectory()+"\\"+filename);
		 }
		 applicationDao.save_app(Appli);
		
		 System.out.println();
		 
		 return "redirect:Student.html?sid="+student_id;
	    }
	 
	 @RequestMapping(value="/Student/ajax.html",  method=RequestMethod.GET)
	    public String getDept_DropDown(@RequestParam  Integer  deptId, HttpServletResponse response) throws JsonGenerationException, JsonMappingException, IOException
	    {
			 
			 System.out.println("Al called here-------" + Dept_Dao.getDepartment(deptId));
			 response.setContentType("application/json");
			 objectMapper.writeValue(response.getWriter(), Dept_Dao.getDepartment(deptId).getProgram());
			 return null;
			 //return "Student/rtstu_application";
	    }
	
	 
	 @RequestMapping(value="/Student/search/api/getSearchResult",  method=RequestMethod.GET)
	    public String ajax_call(ModelMap models , @RequestParam String dept_name)
	    {
		
		 return "Student/stu_application";
	    }
	 @RequestMapping(value="/Student/viewApplication.html")
	 public String viewApplication(@RequestParam int appId, ModelMap model) {
		 model.put("app", applicationDao.getApplication(appId));
		 return "Student/viewApplication";
	 }
	 @RequestMapping(value="/Student/fileDownload.html")
	 public String download(@RequestParam String fileName, HttpServletResponse response) throws IOException {
	     response.setContentType("application/octet-stream");
	     String file = fileName.substring(fileName.lastIndexOf("\\"));
	     response.setHeader( "Content-Disposition",
	             "attachment;filename="+file );
	     java.io.FileInputStream in = new java.io.FileInputStream( fileName );
	        OutputStream out = response.getOutputStream();

	        byte buffer[] = new byte[2048];
	        int bytesRead;
	        while( (bytesRead = in.read( buffer )) > 0 )
	            out.write( buffer, 0, bytesRead );

	        in.close();
		 return null;
	 }
	 
	 @RequestMapping(value="/Student/Edit_Application.html",  method=RequestMethod.GET)
	    public String Edit_Application(@RequestParam int appId ,@RequestParam int studentId, ModelMap models)
	    {
		 models.put("app", applicationDao.getApplication(appId));
		 
		 return "Student/Edit_Application";
	    }
	 @RequestMapping(value="/Student/Edit_Application.html",  method=RequestMethod.POST)
	    public String Edit_Application_Post(@RequestParam MultipartFile file1  ,@RequestParam Integer prog,
	    		@RequestParam(required=false) String[] college ,@RequestParam(required=false) Integer[] start_year ,@RequestParam(required=false) Integer[] end_year, @RequestParam(required=false) String[] degree,
	    		@RequestParam(required=false) String[] major,@RequestParam Integer cin ,@RequestParam Long phone ,@RequestParam String b_date,
	    		@RequestParam Integer gre, @RequestParam String f_name, @RequestParam String l_name , @RequestParam Integer appId, @RequestParam Integer studentId,@RequestParam String gender ,@RequestParam Double gpa ,@RequestParam String citizenship,@RequestParam String term ,@RequestParam(required=false) String add) throws IllegalStateException, IOException 
	    {
		 Application app = applicationDao.getApplication(appId);
		 Application_Status s = applicationDao.getApp_status("New");
		 
			
		 
		 app.setFirst_name(f_name);
		 app.setLast_name(l_name);
		app.setApp_status(s);
		 app.setBirth_date(b_date);
		 if(cin == null)
			  app.setCIN(0);
		 if(cin != null)
		  app.setCIN(cin);
		 app.setCitizenship(citizenship);
		 
		app.setDate(new Date());
		
		
		app.setGender(gender);
		if(gpa == null)
			 app.setGpa(0);
		if(gpa != null)
		 app.setGpa(gpa);
		if(gre == null)
			 app.setGre(0);
		if(gre != null)
		 app.setGre(gre);
		if(phone == null)
			 app.setPhone_number(0);
		if(phone != null)
		 app.setPhone_number(phone);
		app.setProgram(Dept_Dao.getProgram(prog));
	
		app.setTerm_name(term);
		
		app.setSaveorsubmit(add != null ? true: false);
		Application Appli = applicationDao.save_app(app);
		
		if (college != null) {
		List<Degree_of_University> degrees = new ArrayList<Degree_of_University>();
		 for(int i = 0; i < college.length; i++) {
			 degrees.add(Dept_Dao.saveDegree_of_University(new Degree_of_University(college[i], start_year[i], end_year[i], major[i], degree[i], Appli)));
		 }
		 Appli.setDegree_uni(degrees);
		}
		System.out.println("original file name" + file1.getOriginalFilename());
		if (file1.getOriginalFilename().length() > 0) {
	        Path path = FileSystems.getDefault().getPath(Appli.getFile());

			Files.deleteIfExists(path);
			String filenames [] = file1.getOriginalFilename().split("\\.");
		 filenames[0] += "_"+Appli.getId()+".";
		 
		 
		 String filename = filenames[0] + filenames[1];
		 file1.transferTo(new File(getFileDirectory(),filename));		 
		 Appli.setFile(getFileDirectory()+"\\"+filename);
		}
		 applicationDao.save_app(Appli);
		 System.out.println();
		 
		 return "redirect:Student.html?sid="+studentId;
	    }
	 @RequestMapping(value="/Student/removeDegree.html",  method=RequestMethod.GET)
	    public String removeDegree(@RequestParam  Integer  degId, HttpServletResponse response) throws JsonGenerationException, JsonMappingException, IOException
	    {
		 	applicationDao.removeDegree(applicationDao.getDegree(degId));
			 response.setContentType("application/json");
			 objectMapper.writeValue(response.getWriter(), "true");
			 return null;
			 //return "Student/rtstu_application";
	    }
	
}
