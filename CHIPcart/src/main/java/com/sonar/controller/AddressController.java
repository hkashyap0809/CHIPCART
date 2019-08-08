package com.sonar.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sonar.model.Address;
import com.sonar.model.Login;
import com.sonar.service.AddressServiceInterface;

@Controller
public class AddressController {

	@Autowired
	AddressServiceInterface addressService;
	
	
	@RequestMapping("/billing")
	public String billingDetails(Model model) {
		model.addAttribute("billing", new Address());
		return "address";
	}
	
	@RequestMapping("/billingDetails")
	public String billingDetails(@ModelAttribute("billingDetails")Address address, HttpSession session) {
		session.setAttribute("billingDetails", address);
		addressService.addAddress(address);
		return "confirmation";
	}

}
