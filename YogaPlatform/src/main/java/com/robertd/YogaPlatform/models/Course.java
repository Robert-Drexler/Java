package com.robertd.YogaPlatform.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "courses")
public class Course {
	
	//MEMBER VARIABLES
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotEmpty(message = "Name cannot be blank")
	@Size(min = 5, max = 200, message = "Name must be more than 5 characters")
	private String name;

	@NotEmpty(message = "Day cannot be blank")
	@Size(min = 3, max = 200, message = "Day must be more than 3 characters")
	private String day;

	 @NotNull
	 @Min(value=1, message="Amount must be at least 1 dollar")
	 private Double amount;

	@NotEmpty(message = "Description cannot be blank")
	@Size(min = 3, max = 200, message = "Description must be more than 3 characters")
	private String description;

	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;

	//RELATIONSHIPS
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	private User instructor;



	public User getInstructor() {
		return instructor;
	}

	public void setInstructor(User instructor) {
		this.instructor = instructor;
	}

	
	//EMPTY CONSTRUCTOR
	public Course() {
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	

}
