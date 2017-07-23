package springmvc.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import springmvc.model.Members;
import springmvc.model.dao.LoginDao;


@Repository
public class LoginImpl implements LoginDao {
	
	 @PersistenceContext
	    private EntityManager entityManager;

	@Override
	public List<Members> getMembers(String username, String password) {
		// TODO Auto-generated method stub
		return entityManager.createQuery("from Members where email=:email and password=:pass",Members.class)
				.setParameter("email", username).setParameter("pass", password).getResultList();
	}


	
}
