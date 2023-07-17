package com.protech.bookscart.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.protech.bookscart.dto.Product;

public interface ProductRepository extends JpaRepository<Product, Integer>
{

	Product findByName(String name);

}
