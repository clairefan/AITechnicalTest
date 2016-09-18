package com.aitest.web.mapper;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.aitest.web.entity.UserEntity;
@Repository  
@Transactional
public interface UserMapper {
	public UserEntity getUser(String userName);
}
