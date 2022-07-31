package com.project.onlinebanking.service;

import java.util.List;

import com.project.onlinebanking.domain.User;

public interface UserService {
	public void save(User user);

	public User findByUsername(String username);

	public List<User> findAllUser();


}
