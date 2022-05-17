package com.robertd.BookClub.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.robertd.BookClub.models.Book;


@Repository
public interface CourseRepository extends CrudRepository <Course,Long> {
	
	List<Course> findAll();	 
}