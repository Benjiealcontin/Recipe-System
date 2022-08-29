package com.operation.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Recipes {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	private int repid;
	private String recipename;
	private String meat;
	private String vegetables;
	private String spicesAndherbs;
	private String procedures;
	private int cp_fk;
	
	
	public Recipes() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Recipes(int repid, String recipename, String meat, String vegetables, String spicesAndherbs,
			String procedures, int cp_fk) {
		super();
		this.repid = repid;
		this.recipename = recipename;
		this.meat = meat;
		this.vegetables = vegetables;
		this.spicesAndherbs = spicesAndherbs;
		this.procedures = procedures;
		this.cp_fk = cp_fk;
	}


	public Recipes(String recipename, String meat, String vegetables, String spicesAndherbs, String procedures,
			int cp_fk) {
		super();
		this.recipename = recipename;
		this.meat = meat;
		this.vegetables = vegetables;
		this.spicesAndherbs = spicesAndherbs;
		this.procedures = procedures;
		this.cp_fk = cp_fk;
	}


	public int getRepid() {
		return repid;
	}
	public void setRepid(int repid) {
		this.repid = repid;
	}
	public String getRecipename() {
		return recipename;
	}
	public void setRecipename(String recipename) {
		this.recipename = recipename;
	}
	public String getMeat() {
		return meat;
	}
	public void setMeat(String meat) {
		this.meat = meat;
	}
	public String getVegetables() {
		return vegetables;
	}
	public void setVegetables(String vegetables) {
		this.vegetables = vegetables;
	}
	public String getSpicesAndherbs() {
		return spicesAndherbs;
	}
	public void setSpicesAndherbs(String spicesAndherbs) {
		this.spicesAndherbs = spicesAndherbs;
	}
	public int getCp_fk() {
		return cp_fk;
	}
	public void setCp_fk(int cp_fk) {
		this.cp_fk = cp_fk;
	}
	public String getProcedures() {
		return procedures;
	}
	public void setProcedures(String procedures) {
		this.procedures = procedures;
	}
	
	

	
	
}
