package com.robertd.BookClub.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.robertd.BookClub.models.Book;
import com.robertd.BookClub.services.BookService;
import com.robertd.BookClub.services.UserService;

@Controller
public class CourseController {
	@Autowired
	private CourseService courseService;
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/dashboard")
	public String home(Model model,HttpSession session) {
		if(session.getAttribute("user_id")== null) {
			return "redirect:/";
		}
		model.addAttribute("user", userService.getUser((Long) session.getAttribute("user_id")));
		model.addAttribute("courses", courseService.allCourses());
		return "dashboard.jsp";
	}
	
	@GetMapping("/courses/{id}")
	public String getOneBook(@PathVariable("id") Long id,Model model, HttpSession session) {
		if(session.getAttribute("user_id")== null) {
			return "redirect:/";
		}
		model.addAttribute("user_id",session.getAttribute("user_id"));
		model.addAttribute("course", courseService.getOneBook(id));
		return "book.jsp";
	}
	
	//get form and post
	@GetMapping("/courses/new")
	public String newCourse(@ModelAttribute("course") Course course, Model model,HttpSession session) {
		model.addAttribute("user", userService.getUser((Long) session.getAttribute("user_id")));
		return "new.jsp";
	}
	
	@PostMapping("/courses/new")
	public String makeNewCourse(@Valid @ModelAttribute("course") Course course, BindingResult result, Model model,HttpSession session) {
		if(result.hasErrors()) {
			model.addAttribute("user", userService.getUser((Long) session.getAttribute("user_id")));
			return "new.jsp";
		}else {
			courseService.createCourse(course);
			return "redirect:/dashboard";
		}
	}
	
	//delete book
	@DeleteMapping("/courses/delete/{id}")
	public String deleteGift(@PathVariable("id") Long id) {
		bookService.deleteBook(id);
		return "redirect:/home";
	}
	
	//edit book
	@GetMapping("/courses/edit/{id}")
	public String editCourseForm(Model model,@PathVariable("id")Long id,HttpSession session) {
		if(session.getAttribute("user_id")== null) {
			return "redirect:/";
		}
		model.addAttribute("course", courseService.getOneCourse(id));
		return "edit.jsp";
	}
	
	@PutMapping("/courses/edit/{id}")
	public String updateCourse(@Valid @ModelAttribute("course") Course course, BindingResult result) {
		if(result.hasErrors()) return "editCourse.jsp";
		else {
			courseService.updateCourse(course);
			return "redirect:/home";
		}
	}
}
