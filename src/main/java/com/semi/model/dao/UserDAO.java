package com.semi.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semi.model.vo.User;

@Repository
public class UserDAO {

	@Autowired
	private SqlSessionTemplate session;
	
	
}
