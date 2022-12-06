package com.salesken.studentreport.entity;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;


@Entity
public class Student implements Serializable{
	
	@Id
	private Long rollNumber;
	
	private String name;

	public Long getRollNumber() {
		return rollNumber;
	}

	public void setRollNumber(Long rollNumber) {
		this.rollNumber = rollNumber;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	

}
