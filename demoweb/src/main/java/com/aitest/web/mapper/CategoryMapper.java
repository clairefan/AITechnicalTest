package com.aitest.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.aitest.web.entity.CategoryEntity;

@Repository  
@Transactional
public interface CategoryMapper {
	public List<CategoryEntity> getAllCategory();
	
	public CategoryEntity getCategoryById(@Param(value="categoryId")String categoryId);
}
