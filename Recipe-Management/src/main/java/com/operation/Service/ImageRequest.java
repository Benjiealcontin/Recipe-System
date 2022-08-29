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
public class ImageRequest {

	
	private int id;
	private int userfk;
	private String image;
	public ImageRequest() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ImageRequest(int id, int userfk, String image) {
		super();
		this.id = id;
		this.userfk = userfk;
		this.image = image;
	}
	public ImageRequest(int userfk, String image) {
		super();
		this.userfk = userfk;
		this.image = image;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserfk() {
		return userfk;
	}
	public void setUserfk(int userfk) {
		this.userfk = userfk;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	

	
	
}
