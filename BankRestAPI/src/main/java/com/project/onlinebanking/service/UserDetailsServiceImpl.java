package com.project.onlinebanking.service;

import java.util.HashSet;

import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.project.onlinebanking.domain.User;
import com.project.onlinebanking.repository.UserRepository;


@Service
public class UserDetailsServiceImpl implements UserDetailsService {


@Autowired
UserRepository userRepository;
	
	@Override
	@Transactional
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println("@@@ USERNAME @@@@@@@@"+username);
		User user=userRepository.findByUsername(username);

		Set<GrantedAuthority> ga=new HashSet<>();
		

		return new org.springframework.security.core.userdetails.User(user.getUsername(),user.getPassword(),ga);
	}
	
}
