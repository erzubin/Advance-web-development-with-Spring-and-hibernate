package springmvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Degree_of_University {
	@Id
	@GeneratedValue
	private int id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	private String name_of_college;
	
	private int starting_year;
	
	private int end_year;
	
    private String major;
    
    @ManyToOne
    Application app;
    
  

	

	private String name_of_degree;

	  public Degree_of_University() {
	    	
	    }
	    public Degree_of_University(String name_of_college, int starting_year,
				int end_year, String major, String name_of_degree, Application app) {
			this.name_of_college = name_of_college;
			this.starting_year = starting_year;
			this.end_year = end_year;
			this.major = major;
			this.name_of_degree = name_of_degree;
			this.app = app;
		}
	public String getName_of_college() {
		return name_of_college;
	}

	public void setName_of_college(String name_of_college) {
		this.name_of_college = name_of_college;
	}

	public int getStarting_year() {
		return starting_year;
	}

	public void setStarting_year(int starting_year) {
		this.starting_year = starting_year;
	}

	public int getEnd_year() {
		return end_year;
	}

	public void setEnd_year(int end_year) {
		this.end_year = end_year;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getName_of_degree() {
		return name_of_degree;
	}

	public void setName_of_degree(String name_of_degree) {
		this.name_of_degree = name_of_degree;
	}
    
    
	public Application getApp() {
		return app;
	}
	public void setApp(Application app) {
		this.app = app;
	}
    

}
