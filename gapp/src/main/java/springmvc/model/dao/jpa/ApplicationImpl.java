package springmvc.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.Application;
import springmvc.model.Application_Status;
import springmvc.model.Degree_of_University;
import springmvc.model.Department;
import springmvc.model.Program;
import springmvc.model.dao.ApplicationDao;
import springmvc.model.Members;


	
	@Repository
	public class ApplicationImpl implements ApplicationDao {

		 @PersistenceContext
		    private EntityManager entityManager;

		
		@Override
		public int getApplication(String username) {
			
			
			List<Application> app = entityManager.createQuery( "select c from Application c join c.members i where i.email = :email", Application.class )
					.setParameter("email", username + "@localhost.localdomain").getResultList();
			
			
			return app.size();
		}


	

		@Override
		public List<Application> getStudentApplications(Members member) {
			// TODO Auto-generated method stub
			return entityManager.createQuery("from Application where members =:member order by id",Application.class).setParameter("member", member).getResultList();
		}




		@Override
		public Application_Status getApp_status(String status) {
			// TODO Auto-generated method stub
			return entityManager.createQuery("from Application_Status where App_status =:status",Application_Status.class).setParameter("status", status).getSingleResult();
		}




		@Override
		@Transactional
		public Application save_app(Application app) {
			// TODO Auto-generated method stub
			return entityManager.merge(app);
		}




		@Override
		public Application getApplication(int appid) {
			// TODO Auto-generated method stub
			return entityManager.find(Application.class, appid);
		}




		@Override
		@Transactional
		public void removeDegree(Degree_of_University degree) {
			// TODO Auto-generated method stub
			entityManager.remove(degree);
		}




		@Override
		public Degree_of_University getDegree(int degId) {
			// TODO Auto-generated method stub
			return entityManager.find(Degree_of_University.class, degId);
		}


		
		

	}
	