package springmvc.model.dao;

import java.util.List;

import springmvc.model.Application;
import springmvc.model.Application_Status;
import springmvc.model.Degree_of_University;
import springmvc.model.Department;
import springmvc.model.Members;
import springmvc.model.OtherField;
import springmvc.model.Program;

public interface ApplicationDao {
	
	
	int getApplication( String username  );
	List<Application> getStudentApplications(Members member);
	Application_Status getApp_status(String status);
	Application save_app(Application app);
	Application getApplication(int appid);
	void removeDegree(Degree_of_University degree);
	Degree_of_University getDegree(int degId);
}
