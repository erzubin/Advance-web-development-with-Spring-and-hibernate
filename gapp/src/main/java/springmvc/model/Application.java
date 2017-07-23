package springmvc.model;


import java.io.File;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;


@Entity
public class Application {
	
	@Id
    @GeneratedValue
    private Integer id;

	@OneToOne 
	Department department;
	
	@OneToOne
	Program program;
	
	@OneToOne
	Application_Status app_status;
	
	

	@OneToMany(mappedBy="app")
	List<Degree_of_University>  degree_uni;
	
	@OneToOne
    Members members;
	

    private Date date;
	

	private int CIN;

	private long phone_number;
	
	private String gender;
	
	private String birth_date;
	
	private int gre;
	
	private double gpa;
	
	private String term_name;
	
	private String citizenship;

	private String file;
	 
	private boolean saveorsubmit; 
	
	private String first_name;
	
	private String last_name;
	
	
	
	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public boolean isSaveorsubmit() {
		return saveorsubmit;
	}

	public void setSaveorsubmit(boolean saveorsubmit) {
		this.saveorsubmit = saveorsubmit;
	}

	public String getTerm_name() {
		return term_name;
	}

	public void setTerm_name(String term_name) {
		this.term_name = term_name;
	}
	
	
	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Program getProgram() {
		return program;
	}

	public void setProgram(Program program) {
		this.program = program;
	}

	

	public List<Degree_of_University> getDegree_uni() {
		return degree_uni;
	}

	public void setDegree_uni(List<Degree_of_University> degree_uni) {
		this.degree_uni = degree_uni;
	}

	public Members getMembers() {
		return members;
	}

	public void setMembers(Members members) {
		this.members = members;
	}

	public int getCIN() {
		return CIN;
	}

	public void setCIN(int cIN) {
		CIN = cIN;
	}

	public long getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(long phone_number) {
		this.phone_number = phone_number;
	}

	

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirth_date() {
		return birth_date;
	}

	public void setBirth_date(String birth_date) {
		this.birth_date = birth_date;
	}

	public int getGre() {
		return gre;
	}

	public void setGre(int gre) {
		this.gre = gre;
	}

	public double getGpa() {
		return gpa;
	}

	public void setGpa(double gpa) {
		this.gpa = gpa;
	}
	

	public String getCitizenship() {
		return citizenship;
	}

	public void setCitizenship(String citizenship) {
		this.citizenship = citizenship;
	}
	
	
	public Application_Status getApp_status() {
		return app_status;
	}

	public void setApp_status(Application_Status app_status) {
		this.app_status = app_status;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}
