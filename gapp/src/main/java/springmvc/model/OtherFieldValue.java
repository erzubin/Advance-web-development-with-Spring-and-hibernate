package springmvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class OtherFieldValue {
	
	@Id
    @GeneratedValue
    private Integer id;
	
	private String othervalue;
	
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getOthervalue() {
		return othervalue;
	}
	public void setOthervalue(String othervalue) {
		this.othervalue = othervalue;
	}
	

}
