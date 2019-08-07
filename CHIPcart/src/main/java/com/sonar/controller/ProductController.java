package com.sonar.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sonar.model.Login;
import com.sonar.model.Product;
import com.sonar.service.ProductServiceInterface;

@Controller
public class ProductController {
	
	@Autowired
	ProductServiceInterface productService;
	
	@RequestMapping("/product")
	public String productCatalog(Model model,HttpSession session)
	{
		model.addAttribute("product", new Product());
	//	model.addAttribute("productList",productService.getAllProduct());
	//  System.out.println(productService.getAllProduct());
		session.setAttribute("productList", productService.getAllProduct());
		return "product";
	}
	
	@RequestMapping("add/{pId}")
	public String login(@ModelAttribute("login")Login login) {
		if(loginService.validUser(login))
			return "productCatalog";
		else
			return "invalidCredentials";
	}

	
}
