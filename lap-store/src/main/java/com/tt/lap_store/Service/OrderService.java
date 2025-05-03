package com.tt.lap_store.Service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.tt.lap_store.Model.OrderRequest;
import com.tt.lap_store.Model.ProductOrder;

public interface OrderService {

	public void saveOrder(Integer userid, OrderRequest orderRequest) throws Exception;

	public List<ProductOrder> getOrdersByUser(Integer userId);

	public ProductOrder updateOrderStatus(Integer id, String status);

	public List<ProductOrder> getAllOrders();

	public ProductOrder getOrdersByOrderId(String orderId);
	
	public Page<ProductOrder> getAllOrdersPagination(Integer pageNo,Integer pageSize);
}
