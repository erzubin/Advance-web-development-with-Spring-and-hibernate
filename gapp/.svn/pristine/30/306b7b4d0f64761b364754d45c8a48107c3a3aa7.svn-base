package springmvc.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import springmvc.model.Members;
import springmvc.model.dao.UserDao;

@Repository
public class UserDaoImpl implements UserDao {

    @PersistenceContext
    private EntityManager entityManager;

	
	@Override
	public Members getMember(int id) {
		// TODO Auto-generated method stub
        return entityManager.find( Members.class, id );
	}

    

}