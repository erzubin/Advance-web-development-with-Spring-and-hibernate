package springmvc.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.Department;
import springmvc.model.Members;
import springmvc.model.Users;
import springmvc.model.dao.RegDao;

@Repository
public class RegImpl implements RegDao{

	 @PersistenceContext
	    private EntityManager entityManager;

	@Override
	@Transactional
	public Members setMembers(Members member) {
		
		return entityManager.merge(member);
	}

	@Override
	public Users getUser(int id) {
		// TODO Auto-generated method stub
		return entityManager.find(Users.class , id);
	}

	public List<Members> getMembers() {
		
		List<Members>  d = (List<Members>) entityManager.createQuery("from Members", Members.class).getResultList();
		
		return d;
	}

	
	
}
