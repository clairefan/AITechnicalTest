package com.aitest.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aitest.web.entity.PermissionEntity;
import com.aitest.web.entity.UserEntity;
import com.aitest.web.mapper.UserMapper;
import com.aitest.web.mapper.UserRolePermissionMapper;
import com.aitest.web.util.MD5Util;

@Service
public class LoginService {
	@Autowired  
    private UserMapper userMapper;
	@Autowired
	UserRolePermissionMapper userRolePermissionMapper;
	
	public UserEntity getUser(String userName,String password){
		UserEntity user=userMapper.getUser(userName);
		String passwd2MD5=MD5Util.string2MD5(password);
		if(user==null)
			return null;
		if(passwd2MD5.equals(user.getPassword()))
			return user;
		else
			return null;

	}
	
	public List<PermissionEntity> getPermission(int userId){
		return userRolePermissionMapper.getPermissionByUserId(userId);
	}
}
