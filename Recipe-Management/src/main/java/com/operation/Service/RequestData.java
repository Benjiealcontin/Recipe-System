package com.operation.Service;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@JsonIgnoreProperties(ignoreUnknown = true)
public class RequestData {

	private int id;
	private String recipename;
	private String meat;
	private String vegetables;
	private String spicesAndherbs;
	private String procedures;
	private int cp_fk;
	
	
	
	public RequestData() {
		super();
		// TODO Auto-generated constructor stub
	}


	public RequestData(int id, String recipename, String meat, String vegetables, String spicesAndherbs,
			String procedures, int cp_fk) {
		super();
		this.id = id;
		this.recipename = recipename;
		this.meat = meat;
		this.vegetables = vegetables;
		this.spicesAndherbs = spicesAndherbs;
		this.procedures = procedures;
		this.cp_fk = cp_fk;
	}


	public RequestData(String recipename, String meat, String vegetables, String spicesAndherbs, String procedures,
			int cp_fk) {
		super();
		this.recipename = recipename;
		this.meat = meat;
		this.vegetables = vegetables;
		this.spicesAndherbs = spicesAndherbs;
		this.procedures = procedures;
		this.cp_fk = cp_fk;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
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
	public String getProcedures() {
		return procedures;
	}
	public void setProcedures(String procedures) {
		this.procedures = procedures;
	}
	public int getCp_fk() {
		return cp_fk;
	}
	public void setCp_fk(int cp_fk) {
		this.cp_fk = cp_fk;
	}
	
	
}
