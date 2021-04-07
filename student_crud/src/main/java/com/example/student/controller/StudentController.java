package com.example.student.controller;

import java.util.NoSuchElementException;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.student.entities.Student;
import com.example.student.repositories.StudentRepository;


@Controller
public class StudentController {
	
	@Autowired
	private StudentRepository studentRepo;
	
	@RequestMapping("/createStudent")
	public String createStudent() {
		return "empform";
	}
	
	@RequestMapping("/saveStudent")
	public String saveStudent(@ModelAttribute("student") Student student , ModelMap modelMap) {
		studentRepo.save(student);
		java.util.List<Student> students = studentRepo.findAll();
		modelMap.addAttribute("students", students);
		return "displayStudents";
	}
	
	@RequestMapping("/getStudents") 
	public String getStudents(ModelMap modelMap) {
		java.util.List<Student> students = studentRepo.findAll();
		modelMap.addAttribute("students", students);
		return "displayStudents";
	}
	
	@RequestMapping("/deleteStudent")
	public String deleteStudent(@RequestParam("id") long id, ModelMap modelMap) {
		studentRepo.deleteById(id);
		java.util.List<Student> students = studentRepo.findAll();
		modelMap.addAttribute("students", students);
		return "displayStudents";
	}
	
	
	@RequestMapping("/editStudent")
	public String editStudent(@RequestParam("id") long id, ModelMap modelMap) {
		Optional<Student> studentByid = studentRepo.findById(id);
		Student student = studentByid.get();
		
		modelMap.addAttribute("student", student);
		return "studenteditform";
	}
	
	
	@RequestMapping("/editStudentRecord")
	public String editStudentRecord(@ModelAttribute("student") Student student, ModelMap modelMap) {
		
		studentRepo.save(student);
		
		java.util.List<Student> students = studentRepo.findAll();
		modelMap.addAttribute("students", students);
		return "displayStudents";
	}
	
	@GetMapping("/students/{id}")
	public ResponseEntity<Student> student_get(@PathVariable Long id) {
	    try {
	    	Optional<Student> studentByid = studentRepo.findById(id);
		Student student = studentByid.get();
	        return new ResponseEntity<Student>(student, HttpStatus.OK);
	    } catch (NoSuchElementException e) {
	        return new ResponseEntity<Student>(HttpStatus.NOT_FOUND);
	    }      
	}
	
	
	
	
}
