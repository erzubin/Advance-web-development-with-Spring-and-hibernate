package springmvc.model.dao;

import java.util.List;

import springmvc.model.Members;

public interface UserDao {

    /*User getUser( Integer id );

    List<User> getUsers();*/
	Members getMember(int id);
    
    

}