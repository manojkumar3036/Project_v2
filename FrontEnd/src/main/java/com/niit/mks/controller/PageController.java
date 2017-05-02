package com.niit.mks.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.mks.dao.ProductDAO;

@Controller
public class PageController {
	
	@Autowired
	ProductDAO prodDAO;
	@RequestMapping({"/home","/"})
	public String index(Model model)
	{
		model.addAttribute("productlist", prodDAO.displayAllProduct());
		return "home";
	}

}
