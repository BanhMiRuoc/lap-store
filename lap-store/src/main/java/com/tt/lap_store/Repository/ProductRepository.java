package com.tt.lap_store.Repository;

import com.tt.lap_store.Model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Integer> {
}
