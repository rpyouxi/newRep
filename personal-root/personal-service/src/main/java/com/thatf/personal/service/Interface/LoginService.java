package com.thatf.personal.service.Interface;

import org.springframework.stereotype.Service;

import com.thatf.personal.domain.User;

@Service
public interface LoginService {
	

	User queryById(Long id);
	
	void register(User user);
}
