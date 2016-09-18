package com.aitest.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.aitest.web.entity.PermissionEntity;
import com.aitest.web.entity.RoleEntity;

@Repository  
@Transactional
public interface UserRolePermissionMapper {
	public List<RoleEntity> getAllRole();
	
	public RoleEntity getRoleById(@Param(value="roleId")String roleId);
	
	public List<PermissionEntity> getPermissionByRoleId(@Param(value="roleId")String roleId);
	
	public RoleEntity getRoleByUserId(@Param(value="userId")String userId);
	
	public List<PermissionEntity> getPermissionByUserId(@Param(value="userId")int userId);
}
