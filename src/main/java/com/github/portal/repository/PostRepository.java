package com.github.portal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.github.portal.model.Post;

@Repository("postRepository")
public interface PostRepository extends JpaRepository<Post, Long> {
	
}
