package com.salesken.studentreport.entity;

import java.io.Serializable;

import jakarta.persistence.CascadeType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;




@jakarta.persistence.Entity
public class Marks implements Serializable {

	@jakarta.persistence.Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private Long rollNumber;
	
	private Long english;
	
	private Long maths;
	
	private Long science;
	
	private Long semester;
	
	private Long total;
	
	private Double Average;

	public Long getRollNumber() {
		return rollNumber;
	}

	public void setRollNumber(Long rollNumber) {
		this.rollNumber = rollNumber;
	}

	public Long getEnglish() {
		return english;
	}

	public void setEnglish(Long english) {
		this.english = english;
	}

	public Long getMaths() {
		return maths;
	}

	public void setMaths(Long maths) {
		this.maths = maths;
	}

	public Long getScience() {
		return science;
	}

	public void setScience(Long science) {
		this.science = science;
	}

	public Long getSemester() {
		return semester;
	}

	public void setSemester(Long semester) {
		this.semester = semester;
	}

	public Long getTotal() {
		return total;
	}

	public void setTotal(Long total) {
		this.total = total;
	}

	public Double getAverage() {
		return Average;
	}

	public void setAverage(Double average) {
		Average = average;
	}
	
	

	
	
	
}
