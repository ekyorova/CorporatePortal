package com.github.portal.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="posts")
public class Post {
	@Id
	@GeneratedValue
	private int postID;

	@NotEmpty
	private String title;
	
	@NotEmpty
	private String fileContent;
	
	@ManyToOne
	@JoinColumn(name = "creatorID")
	private Student student;
	
	@NotEmpty
	@Column(name = "isMain", columnDefinition = "BIT", length = 1)
	private boolean isMain;
	

	@JoinColumn(name="postPreviousID", referencedColumnName = "postID", nullable = true)
	@ManyToOne(optional = true)
	private Post postPrevious;
	
	public int getPostId() {
		return postID;
	}

	public void setPostId(int postId) {
		this.postID = postId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getFileContent() {
		return fileContent;
	}

	public void setFileContent(String fileContent) {
		this.fileContent = fileContent;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public boolean isMain() {
		return isMain;
	}

	public void setMain(boolean isMain) {
		this.isMain = isMain;
	}
	
	
}
