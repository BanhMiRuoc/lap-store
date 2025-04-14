package com.tt.lap_store.Service.impl;

import com.tt.lap_store.Model.Product;
import com.tt.lap_store.Repository.ProductRepository;
import com.tt.lap_store.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductRepository productRepository;
    @Override
    public Product saveProduct(Product product) {
        return productRepository.save(product);
    }
}
