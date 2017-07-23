package springmvc.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class OtherField {
	
	@Id
    @GeneratedValue
    private Integer id;

	private String namefield;
	private String typefield;
	private Boolean required;
	
	@ManyToOne
	private Department department;
	@OneToOne
	private OtherFieldValue otherFieldValue;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNamefield() {
		return namefield;
	}

	public void setNamefield(String namefield) {
		this.namefield = namefield;
	}

	public String getTypefield() {
		return typefield;
	}

	public void setTypefield(String typefield) {
		this.typefield = typefield;
	}

	public Boolean getRequired() {
		return required;
	}

	public void setRequired(Boolean required) {
		this.required = required;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}
	
}
