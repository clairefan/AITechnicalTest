package com.aitest.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aitest.web.constant.SystemConstant;
import com.aitest.web.dto.SearchProductDto;
import com.aitest.web.entity.ProductEntity;
import com.aitest.web.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	ProductService productService;
	
	@ResponseBody  
    @RequestMapping(value="/addProduct" , method = RequestMethod.POST)
	public String login(@ModelAttribute("fbean")ProductEntity product){
		return productService.addProduct(product);			
	}
	
	@ResponseBody  
    @RequestMapping(value="/getAllProduct" , method = RequestMethod.POST)
	public String getAllProduct(Model model){
		SearchProductDto dto=new SearchProductDto();
		List<ProductEntity> products=productService.getAllProduct(dto);
		model.addAttribute(products);
		return SystemConstant.SUCCESS;
		
	}
}
