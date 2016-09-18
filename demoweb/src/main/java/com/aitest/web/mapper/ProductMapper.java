package com.aitest.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.aitest.web.dto.SearchProductDto;
import com.aitest.web.entity.ProductEntity;

@Repository  
@Transactional
public interface ProductMapper {
	public List<ProductEntity> getAllProducts(SearchProductDto productInfo);
	
	public ProductEntity getProductById(@Param(value="productId")String productId);
	
	public void modifyProduct(ProductEntity product);
	
	public void deleteProductById(@Param(value="productId")String productId);
	
	public void addProduct(ProductEntity product);
	
	public int countProducts(SearchProductDto productInfo);
}
