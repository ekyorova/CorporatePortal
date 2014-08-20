package com.github.portal.controller;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.github.portal.model.Student;
import com.github.portal.model.StudentLogin;
import com.github.portal.service.StudentService;

@Controller
@SessionAttributes("student")
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	private static MessageDigest md;
		
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signup(Model model) {
		Student student = new Student();		
		model.addAttribute("student", student);		
		return "signup";
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public String signup(@Valid @ModelAttribute("student") Student student, BindingResult result, Model model) {		
		if(result.hasErrors()) {
			return "signup";
		} else if(studentService.findByUserName(student.getUserName())) {
			model.addAttribute("message", "User Name exists. Try another user name");
			return "signup";
		} else {
			String encryptedPass = encryptPassword(student.getPassword());
			student.setPassword(encryptedPass);
			studentService.save(student);
			model.addAttribute("message", "Saved student details");
			return "redirect:login.html";
		}
	}

	private String encryptPassword(String password) {
		StringBuffer sb = null;
		try {
			sb = new StringBuffer();
	        md = MessageDigest.getInstance("MD5");
	        byte[] passBytes = password.getBytes();
	        md.reset();
	        byte[] digested = md.digest(passBytes);
	        for(int i=0;i<digested.length;i++){
	            sb.append(Integer.toHexString(0xff & digested[i]));
	        }
	    } catch (NoSuchAlgorithmException ex) {
	        System.out.println(ex.getMessage());
	    }
		return sb.toString();
	}      

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(Model model) {
		StudentLogin userLogin = new StudentLogin();		
		model.addAttribute("studentLogin", userLogin);
		return "login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(@Valid @ModelAttribute("studentLogin") StudentLogin userLogin, BindingResult result) {
		if (result.hasErrors()) {
			return "login";
		} else {
			boolean found = studentService.findByLogin(userLogin.getUserName(), encryptPassword(userLogin.getPassword()));
			if (found) {				
				return "redirect:posts.html";
			} else {				
				return "failure";
			}
		}
		
	}
}
