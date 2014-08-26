package com.github.portal.service;

import com.github.portal.model.Student;

public interface StudentService {
	Student save(Student student);
	boolean findByLogin(String userName, String password);
	boolean findByUserName(String userName);
	Student findStudentByName(String userName);
}
