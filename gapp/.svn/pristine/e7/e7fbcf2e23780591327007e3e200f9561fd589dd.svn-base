package springmvc.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.Degree_of_University;
import springmvc.model.Department;
import springmvc.model.OtherField;
import springmvc.model.Program;
import springmvc.model.dao.DepartmentDao;

@Repository
public class DepartmentImpl implements DepartmentDao {
	 @PersistenceContext
	    private EntityManager entityManager;

	@Override
	public List<Department> getDepartment() {
		// TODO Auto-generated method stub
		List<Department>  d = (List<Department>) entityManager.createQuery("from Department", Department.class).getResultList();
	
	
		return d;
	}

	@Override
	public Department getDepartment(int id) {
		// TODO Auto-generated method stub
		return entityManager.find( Department.class, id );

	}

	@Override
	@Transactional
	public Department addDept(Department dept) {
		// TODO Auto-generated method stub
		return entityManager.merge(dept);
	}

	@Override
	@Transactional
	public Program addProgram(Program p) {
		// TODO Auto-generated method stub
		return entityManager.merge(p);
	}

	@Override
	public List<Program> getProgram() {
		
		List<Program>  d = (List<Program>) entityManager.createQuery("from Program", Program.class).getResultList();
		
		return d;
	}

	@Override
	public Program getProgram(int id) {
		// TODO Auto-generated method stub
		return entityManager.find( Program.class, id );
	}

	@Override
	@Transactional
	public void removeProgram(int id) {
		entityManager.remove(getProgram(id));
		
	}

	
	@Transactional
	public OtherField addOtherField(OtherField d) {
		// TODO Auto-generated method stub
		return entityManager.merge(d);
	}

	@Override
	@Transactional
	public void removeOtherfield(int id) {

		entityManager.remove(getOtherField(id));
	}

	@Override
	public OtherField getOtherField(int id) {
		// TODO Auto-generated method stub
		return entityManager.find(OtherField.class, id);
	}

	@Override
	@Transactional
	public Degree_of_University saveDegree_of_University(Degree_of_University degree) {
		// TODO Auto-generated method stub
		return entityManager.merge(degree);
	}

	
	


	
}
