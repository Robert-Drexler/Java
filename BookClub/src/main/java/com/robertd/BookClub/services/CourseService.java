package com.robertd.BookClub.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.robertd.BookClub.models.Book;
import com.robertd.BookClub.repositories.BookRepository;

@Service
public class CourseService {

		@Autowired
		private CourseRepository courseRepo;
		
		
		// get all
		public List<Course> allCourses(){
			return courseRepo.findAll();
		}
		
		
		//find one
		public Course getOneCourse(Long id) {
			Optional<Course> optionalCourse = courseRepo.findById(id);
			if(optionalCourse.isPresent()) {
				return optionalCourse.get();
			}else {
				return null;
			}
		}
		
		//create a course
		public Course createCourse(Course course) {
			return courseRepo.save(course);
		}
		
		//update a course
		public Course updateCourse(Course course) {
			return courseRepo.save(course);
		}
		
		//delete course by id
		public void deleteCourse(Long id) {
			courseRepo.deleteById(id);
		}
}



