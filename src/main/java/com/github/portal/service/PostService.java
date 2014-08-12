package com.github.portal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.portal.model.Post;
import com.github.portal.model.Student;
import com.github.portal.repository.PostRepository;

@Service("postService")
public class PostService {

	@Autowired
	private PostRepository postRepository;
	
	@Transactional
	public Post save(Post post) {
		return postRepository.save(post);
	}

}
