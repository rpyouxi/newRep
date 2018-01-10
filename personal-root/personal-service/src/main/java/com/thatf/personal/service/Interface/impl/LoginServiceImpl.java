package com.thatf.personal.service.Interface.impl;

import java.time.Instant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.BiConsumer;

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

	public void register(User user) {

	}

	public static void main(String[] args) {
		List<String> list = new ArrayList<String>();
		list.add("1");
		list.add("2");
		list.add("3");
		for (String item : list) {
			if ("2".equals(item)) {
				list.remove(item);
			}
		}
		System.out.println(list.size());
		
		Map<String,Integer> aa = new HashMap();
		//TODO:(zhangrp,17-12-29)
		aa.forEach(new BiConsumer<String, Integer>() {
			public void accept(String t, Integer u) {
				
			}
		});
	}

}
