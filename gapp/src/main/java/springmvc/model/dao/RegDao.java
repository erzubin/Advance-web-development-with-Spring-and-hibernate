package springmvc.model.dao;

import java.util.List;

import springmvc.model.Members;
import springmvc.model.Users;

public interface RegDao {

	List<Members> getMembers();
	Members setMembers(Members member);
	Users getUser(int id);
}
