package com.aitest.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aitest.web.dto.SearchProductDto;
import com.aitest.web.entity.ProductEntity;
import com.aitest.web.entity.UserEntity;
import com.aitest.web.mapper.CategoryMapper;
import com.aitest.web.mapper.ProductMapper;
import com.aitest.web.mapper.UserMapper;

@Controller  
public class TestController {   
  
    @Autowired  
    private UserMapper userMapper;   
    @Autowired
	ProductMapper productMapper;
	@Autowired
	CategoryMapper categoryMapper;  
   
	@RequestMapping(value = "test")   
    public void indexPage() {      
    	UserEntity entity = userMapper.getUser("10000013");   
        System.out.println("name£º" + entity.getUserName());   
    }      
	@RequestMapping(value = "testProduct") 
	public void testProduct(){
		SearchProductDto productInfo= new SearchProductDto();
		productInfo.setFrom(0);
		productInfo.setTo(100);
		List<ProductEntity> pe=productMapper.getAllProducts(productInfo);
		System.out.println(pe.size());
		
	}
}  