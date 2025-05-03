package com.tt.lap_store.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tt.lap_store.Model.ProductOrder;

public interface ProductOrderRepository extends JpaRepository<ProductOrder, Integer> {

	List<ProductOrder> findByUserId(Integer userId);

	ProductOrder findByOrderId(String orderId);

}
