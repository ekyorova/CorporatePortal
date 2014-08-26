package com.github.portal.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.github.portal.model.Post;
import com.github.portal.service.PostService;
import com.github.portal.service.StudentService;


@Controller
@SessionAttributes("post")
public class PostController {

	@Autowired
	private PostService postService;
	
	@Autowired
	private StudentService studentService;

	@RequestMapping(value = "/posts", method = RequestMethod.GET)
	public ModelAndView post() {
		ModelAndView model = new ModelAndView();
		Post post = new Post();
		model.addObject("post", post);
		model.setViewName("posts");
		return model;
	}

	@RequestMapping(value = "/posts", method = RequestMethod.POST)
	public ModelAndView post(@Valid @ModelAttribute("post") Post post,
			BindingResult result) {
		ModelAndView model = new ModelAndView();
		//Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		//post.setStudent(studentService.findStudentByName(auth.getName()));
		postService.save(post);
		model.addObject("message", "Saved post");
		return model;
	}
}
