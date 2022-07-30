package com.project.onlinebanking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.onlinebanking.domain.User;


public interface UserRepository extends JpaRepository<User,Long>{

	public User findByUsername(String username);
	public User findByPassword(String password);
	
	
}
