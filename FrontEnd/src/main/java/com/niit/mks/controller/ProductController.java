package com.niit.mks.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.mks.dao.ProductDAO;
import com.niit.mks.model.Product;

@Controller
public class ProductController {

	@Autowired
	ProductDAO prodDAO;

	@RequestMapping("/product")
	public String showProductForm(Model model) {
		model.addAttribute("isUserClickedProduct", "true");
		model.addAttribute("productlist", prodDAO.displayAllProduct());
		model.addAttribute("productdata", new Product());
		return "index";
	}

	@RequestMapping("/addProduct.do")
	public String addProduct(@Valid @ModelAttribute("productdata") Product product, BindingResult result, Model model,HttpServletRequest request) {
		if (result.hasErrors()) {
			model.addAttribute("productlist", prodDAO.displayAllProduct());
			model.addAttribute("isUserClickedProduct","true");
			 return "index";
		}

		prodDAO.insertProduct(product);
		MultipartFile file = product.getFile();
		/*if (!prodImage.isEmpty()) {
			Path paths = Paths
					.get("C:/Users/MANOJ/git/Project_v2/FrontEnd/src/main/webapp/resources/images/"
							+ product.getId() + ".png");
			
			// C:\Users\MANOJ\git\Project_v2\FrontEnd\src
			try {
				prodImage.transferTo(new File(paths.toString()));
			} catch (Exception e) {
				e.printStackTrace();

			}

		}*/
		
		// trying a new logic
		if (file != null && file.getSize() > 0) {
			
			String originalFile = file.getOriginalFilename();
			String filePath = request.getSession().getServletContext().getRealPath("/resources/images/productimages/");
			System.out.println(filePath + "" + originalFile);

			String myFileName = filePath +  product.getId() + ".jpg";

			try {
				byte imagebyte[] = product.getFile().getBytes();
				BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(myFileName));
				fos.write(imagebyte);
				fos.close();

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "redirect:/product";
	}

	@RequestMapping("/product/update/{id}")
	public ModelAndView updateProduct(@PathVariable int id) {

		ModelAndView model=new ModelAndView("index");
		Product product = prodDAO.getProduct(id);

		model.addObject("productdata", product);
		model.addObject("productlist", prodDAO.displayAllProduct());
		model.addObject("isUserClickedProduct", "true");
		

		return model;

	}
	
	@RequestMapping("/product/delete/{id}")
	public String deleteProduct(@PathVariable int id, Model model)
	{
		//ModelAndView model=new ModelAndView("index");
		prodDAO.deleteProduct(id);
		model.addAttribute("productdata", new Product());
		model.addAttribute("productlist", prodDAO.displayAllProduct());
		model.addAttribute("isUserClickedProduct", "true");
		
		return "index";
	}


	@RequestMapping("/products/all")
	public @ResponseBody List<Product> getProduct() {

		return prodDAO.displayAllProduct();
	}

	@RequestMapping("/category")
	public String showCategoryForm(Model model) {
		model.addAttribute("isUserClickedCategory", "true");
		return "index";
	}

	@RequestMapping("/supplier")
	public String showSupplierForm(Model model) {
		model.addAttribute("isUserClickedSupplier", "true");
		return "index";
	}

	@RequestMapping("/signup")
	public String doSignUp() {
		return "signup";
	}

	@RequestMapping("/signin")
	public String doSignIn() {
		return "signin";
	}
}
