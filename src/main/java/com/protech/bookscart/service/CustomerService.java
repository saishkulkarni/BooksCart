package com.protech.bookscart.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;

import com.protech.bookscart.dto.Customer;
import com.protech.bookscart.dto.Item;
import com.protech.bookscart.dto.Product;
import com.protech.bookscart.dto.ShoppingCart;
import com.protech.bookscart.repository.CustomerRepository;
import com.protech.bookscart.repository.ProductRepository;

import jakarta.servlet.http.HttpSession;

@Component
public class CustomerService {
	@Autowired
	CustomerRepository customerRepository;
	@Autowired
	ProductRepository productRepository;

	public String signup(Customer customer, ModelMap model) {
		Customer customer1 = null;
		try {
			long mobile = customer.getMno();
			customer1 = customerRepository.findByMno(mobile);
		} catch (NumberFormatException e) {
			String email = customer.getEmail();
			customer1 = customerRepository.findByEmail(email);
		}
		if (customer1 == null) {
			customerRepository.save(customer);
			model.put("pass", "Account Creattion Success");
			return "Home";
		} else {
			model.put("fail", "Email or Mobile Already Exists");
			return "AdminSignup";
		}

	}

	public String login(String user, String password, HttpSession session, ModelMap model) {
		Customer customer = null;
		try {
			long mobile = Long.parseLong(user);
			customer = customerRepository.findByMno(mobile);
		} catch (NumberFormatException e) {
			String email = user;
			customer = customerRepository.findByEmail(email);
		}
		if (customer == null) {
			model.put("fail", "Incorrect Email or Mobile");
			return "CustomerLogin";
		} else {
			if (customer.getPwd().equals(password)) {
				session.setAttribute("customer", customer);
				model.put("pass", "Login Success");
				return "Home";
			} else {
				model.put("fail", "Incorrect Password");
				return "CustomerLogin";
			}
		}
	}

	public String fetchProducts(ModelMap model) {
		List<Product> list = productRepository.findAll();
		if (list.isEmpty()) {
			model.put("fail", "data not found");
			return "Home";
		} else {
			model.put("list", list);
			return "CustomerProduct";
		}
	}

	public String addToCart(HttpSession session, ModelMap model, int id) {
		if (session.getAttribute("customer") == null) {
			model.put("fail", "First Login to Add to Cart");
			return "CustomerLogin";
		} else {

			Product product = productRepository.findById(id).orElse(null);
			Customer customer = (Customer) session.getAttribute("customer");

			ShoppingCart cart = customer.getCart();
			if (cart == null) {
				cart = new ShoppingCart();
			}

			List<Item> items = cart.getItems();

			if (items == null) {
				items = new ArrayList<Item>();
			}
			Item item = null;
			if (items.isEmpty()) {
				item = new Item();
				item.setImage(product.getImage());
				item.setName(product.getName());
				item.setPrice(product.getPrice());
				item.setQuantity(1);
				items.add(item);
			} else {
				boolean flag = false;
				for (Item item1 : items) {
					if (item1.getName().equals(product.getName())) {
						item1.setQuantity(item1.getQuantity() + 1);
						item1.setPrice(item1.getPrice() + product.getPrice());
						item = item1;
						flag = false;
						break;
					} else {
						flag = true;
					}
				}
				if (flag) {
					item = new Item();
					item.setImage(product.getImage());
					item.setName(product.getName());
					item.setPrice(product.getPrice());
					item.setQuantity(1);
					items.add(item);
				}

			}

			cart.setItems(items);
			customer.setCart(cart);

			customerRepository.save(customer);
			model.put("pass", "Added to Cart");
			List<Product> list = productRepository.findAll();
			if (list.isEmpty()) {
				model.put("fail", "data not found");
				return "Home";
			} else {
				model.put("list", list);
				return "CustomerProduct";
			}
		}
	}

	public String viewCart(HttpSession session, ModelMap model) {
		Customer customer = (Customer) session.getAttribute("customer");
		if (customer == null || customer.getCart() == null || customer.getCart().getItems() == null
				|| customer.getCart().getItems().isEmpty()) {
			model.put("fail", "No Products in Cart");
			return "/Home";
		} else {
			List<Item> items = customer.getCart().getItems();
			model.put("list", items);
			return "CustomerCart";
		}
	}

	public String delete(HttpSession session, ModelMap model, String name) {
		Item item1 = null;
		Customer customer = (Customer) session.getAttribute("customer");
		if (customer == null) {
			model.put("fail", "please login again");
			return "CustomerLogin";
		} else {
			List<Item> items = customer.getCart().getItems();
			Product product = productRepository.findByName(name);
			for (Item item : items) {
				if (item.getName().equals(product.getName())) {
					item1 = item;
				}
			}
			if (item1.getQuantity() > 1) {
				item1.setQuantity(item1.getQuantity() - 1);
			} else {
				items.remove(item1);
			}

			ShoppingCart cart = customer.getCart();
			cart.setItems(items);
			customer.setCart(cart);
			customerRepository.save(customer);
			List<Item> items1 = customer.getCart().getItems();

			model.put("pass", "Item Removed From Cart");
			if(items1.isEmpty())
			{
				model.put("fail", "No Items in Cart");
				return "Home";
			}
			else {
			model.put("list", items1);
			return "CustomerCart";
			}
		}
	}

	public String billing(HttpSession session, ModelMap model, String payment) {
		double price = 0;
		Customer customer = (Customer) session.getAttribute("customer");
		if (customer == null) {
			model.put("fail", "please login again");
			return "CustomerLogin";
		} else {
			for (Item item : customer.getCart().getItems()) {
				price = price + (item.getPrice());
			}
			model.put("price", price);
			model.put("payment", payment);
			model.put("customer", customer);	
			customerRepository.save(customer);
			return "Customer_billing";
		}
	}

}
