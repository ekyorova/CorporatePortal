package com.github.portal.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.github.portal.model.Post;
import com.github.portal.service.PostService;


@Controller
@SessionAttributes("post")
public class PostController {

	@Autowired
	private PostService postService;

	@RequestMapping(value = "/posts", method = RequestMethod.GET)
	public String post(Model model) {
		Post post = new Post();
		model.addAttribute("post", post);
		return "posts";
	}

	@RequestMapping(value = "/posts", method = RequestMethod.POST)
	public String post(@Valid @ModelAttribute("post") Post post,
			BindingResult result, Model model) {
		postService.save(post);
		model.addAttribute("message", "Saved post");
		return "redirect:index.html";
	}
}
