package com.aitest.web.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aitest.web.constant.SystemConstant;
import com.aitest.web.dto.SearchProductDto;
import com.aitest.web.entity.ProductEntity;
import com.aitest.web.mapper.CategoryMapper;
import com.aitest.web.mapper.ProductMapper;

@Service
public class ProductService {
	@Autowired
	ProductMapper productMapper;
	@Autowired
	CategoryMapper categoryMapper;
	
	public String addProduct(ProductEntity product){
		if(SystemConstant.EXIST.equals(checkProductId(product.getProductId()))){
			return "ProductId exist";
		}
		if(SystemConstant.NOT_EXIST.equals(chechCategoryId(product.getCategoryId()))){
			return "CategoryId doesn't exist";
		}
		try{
			productMapper.addProduct(product);
		}catch(Exception e){
			return SystemConstant.FAILURE;
		}
		return SystemConstant.SUCCESS;
		
	}
	
	public List<ProductEntity> getAllProduct(SearchProductDto dto){
		
		return productMapper.getAllProducts(dto);
		
	}
	public String modifyProduct(ProductEntity product){
		if(SystemConstant.NOT_EXIST.equals(chechCategoryId(product.getCategoryId()))){
			return "CategoryId doesn't exist";
		}
		try{
			productMapper.modifyProduct(product);
		}catch(Exception e){
			return SystemConstant.FAILURE;
		}
		return SystemConstant.SUCCESS;
	}
	
	public void deleteProductById(String productId){
		productMapper.deleteProductById(productId);
	}
	
	public String chechCategoryId(String categoryId){
		if(categoryMapper.getCategoryById(categoryId)!=null)
			return SystemConstant.EXIST;
		else
			return SystemConstant.NOT_EXIST;
	}
	
	public String checkProductId(String productId){
		if(productMapper.getProductById(productId)!=null)
			return SystemConstant.EXIST;
		else
			return SystemConstant.NOT_EXIST;
	}
}
