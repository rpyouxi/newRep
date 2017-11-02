package com.thatf.personal.service.Interface.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thatf.personal.dao.UserDao;
import com.thatf.personal.domain.User;
import com.thatf.personal.service.Interface.LoginService;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private UserDao userDao;

	public User queryById(Long id) {
		System.out.println("start LoginService queryById id is "+id);
		return userDao.queryById(id);
	}

}
