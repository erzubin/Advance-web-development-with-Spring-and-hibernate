package springmvc.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import springmvc.model.Application;
import springmvc.model.dao.ApplicationDao;
import springmvc.model.dao.TermDao;


@Repository
public class TermDaoImpl implements TermDao {

	 @PersistenceContext
	    private EntityManager entityManager;

	@Override
	public int getTerm(String dep_name, String term) {
		
		List<Application> app = entityManager.createQuery( "select c from Application c join c.department i where i.department_name = :dep_name and c.term_name = :term_name", Application.class )
				.setParameter("dep_name", dep_name).setParameter("term_name", term).getResultList();
		
		
		
		
		return app.size();
	}

	

	
	
	

}
