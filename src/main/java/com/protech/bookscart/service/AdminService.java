package com.protech.bookscart.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import com.protech.bookscart.dto.Customer;
import com.protech.bookscart.dto.Product;
import com.protech.bookscart.repository.CustomerRepository;
import com.protech.bookscart.repository.ProductRepository;

import jakarta.servlet.http.HttpSession;

@Service

public class AdminService {
	@Autowired
	ProductRepository productRepository;

	@Autowired
	CustomerRepository customerRepository;

	public String login(String user, String pass, HttpSession session, ModelMap model) {
		if (user.equals("admin")) {
			if (pass.equals("admin")) {
				session.setAttribute("admin", "admin");
				model.put("pass", "Login Success");
				return "AdminHome";
			} else {
				model.put("fail", "Enter proper Password");
				return "AdminLogin";
			}
		} else {
			model.put("fail", "Enter proper Email");
			return "AdminLogin";
		}
	}

	public String insert(Product product, MultipartFile pic, ModelMap model) throws IOException {
		byte[] image = new byte[pic.getInputStream().available()];
		pic.getInputStream().read(image);

		product.setImage(image);
		productRepository.save(product);
		model.put("pass", "Product added success");
		return "AdminHome";
	}

	public String update(Product product, ModelMap model) throws IOException {
		Product product2 = productRepository.findById(product.getId()).orElse(null);
		if (product2 == null) {
			model.put("fail", "Incorrect Id");
		} else {
			
			product.setImage(product2.getImage());
			product.setCategory(product2.getCategory());

			productRepository.save(product);
			model.put("pass", "Product updated success");
		}
		return "AdminHome";
	}

	public String delete(int id, ModelMap model) {
		Product product = productRepository.findById(id).orElse(null);
		if (product == null) {
			model.put("fail", "Incorrect Id");
		} else {
			productRepository.deleteById(id);
			model.put("pass", "Product deleted success");

		}
		return "AdminHome";
	}

	public String fetchProducts(HttpSession session, ModelMap model) {
		if (session.getAttribute("admin") == null) {
			model.put("fail", "Session Expired");
			return "AdminHome";
		} else {
			List<Product> list = productRepository.findAll();
			if (list.isEmpty()) {
				model.put("fail", "Book not found");
				return "AdminHome";
			} else {
				model.put("list", list);
				return "AdminCart";
			}

		}
	}

	public String fetchCustomer(HttpSession session, ModelMap model) {
		if (session.getAttribute("admin") == null) {
			model.put("fail", "Session Expired");
			return "AdminHome";
		} else {
			List<Customer> list = customerRepository.findAll();
			if (list.isEmpty()) {
				model.put("fail", "No One Registered Yet");
				return "AdminHome";
			} else {
				model.put("list", list);
				return "ViewCustomer";
			}
		}
	}

}
