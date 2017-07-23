package springmvc.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;



@Entity

public class Department {
	
	@Id
    @GeneratedValue
    private Integer id;

	private String department_name;
	
	@JsonIgnore
	@OneToMany(mappedBy="dept")
	List<Program> program;
	//@JsonIgnore
	//@OneToMany(mappedBy="department")
	//List<Members> members;
	@JsonIgnore
	@OneToMany(mappedBy="department")
	List<OtherField> otherField; 

	public List<OtherField> getOtherField() {
		return otherField;
	}

	public void setOtherField(List<OtherField> otherField) {
		this.otherField = otherField;
	}
	
/*	public List<Members> getMembers() {
		return members;
	}

	public void setMembers(List<Members> members) {
		this.members = members;
	}*/

	public List<Program> getProgram() {
		return program;
	}

	public void setProgram(List<Program> program) {
		this.program = program;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}


	

}
