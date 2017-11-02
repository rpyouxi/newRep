package com.thatf.personal.dao;

import org.apache.ibatis.annotations.Param;

import com.thatf.personal.domain.User;

public interface UserDao {
	
	User queryById(@Param("id")Long id);

}
