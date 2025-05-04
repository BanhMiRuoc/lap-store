package com.tt.lap_store.Service.impl;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.tt.lap_store.Model.Cart;
import com.tt.lap_store.Model.OrderAddress;
import com.tt.lap_store.Model.OrderRequest;
import com.tt.lap_store.Model.ProductOrder;
import com.tt.lap_store.Repository.CartRepository;
import com.tt.lap_store.Repository.ProductOrderRepository;
import com.tt.lap_store.Service.OrderService;
import com.tt.lap_store.Util.CommonUtil;
import com.tt.lap_store.Util.OrderStatus;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private ProductOrderRepository orderRepository;

	@Autowired
	private CartRepository cartRepository;

	@Autowired
	private CommonUtil commonUtil;

	@Override
	public void saveOrder(Integer userid, OrderRequest orderRequest) throws Exception {

		List<Cart> carts = cartRepository.findByUserId(userid);

		for (Cart cart : carts) {
			// Builder Pattern
			OrderAddress address = OrderAddress.builder()
					.firstName(orderRequest.getFirstName())
					.lastName(orderRequest.getLastName())
					.email(orderRequest.getEmail())
					.mobileNo(orderRequest.getMobileNo())
					.address(orderRequest.getAddress())
					.city(orderRequest.getCity())
					.state(orderRequest.getState())
					.pincode(orderRequest.getPincode())
					.build();
			// Builder Pattern
			ProductOrder order = ProductOrder.builder()
					.orderId(UUID.randomUUID().toString())
					.orderDate(LocalDate.now())
					.product(cart.getProduct())
					.price(cart.getProduct().getDiscountPrice())
					.quantity(cart.getQuantity())
					.user(cart.getUser())
					.status(OrderStatus.IN_PROGRESS.getName())
					.paymentType(orderRequest.getPaymentType())
					.orderAddress(address)
					.build();

			ProductOrder saveOrder = orderRepository.save(order);
			commonUtil.sendMailForProductOrder(saveOrder, "success");
		}
	}

	@Override
	public List<ProductOrder> getOrdersByUser(Integer userId) {
		List<ProductOrder> orders = orderRepository.findByUserId(userId);
		return orders;
	}

	@Override
	public ProductOrder updateOrderStatus(Integer id, String status) {
		Optional<ProductOrder> findById = orderRepository.findById(id);
		if (findById.isPresent()) {
			ProductOrder productOrder = findById.get();
			productOrder.setStatus(status);
			ProductOrder updateOrder = orderRepository.save(productOrder);
			return updateOrder;
		}
		return null;
	}

	@Override
	public List<ProductOrder> getAllOrders() {
		return orderRepository.findAll();
	}

	@Override
	public Page<ProductOrder> getAllOrdersPagination(Integer pageNo, Integer pageSize) {
		Pageable pageable = PageRequest.of(pageNo, pageSize);
		return orderRepository.findAll(pageable);

	}

	@Override
	public ProductOrder getOrdersByOrderId(String orderId) {
		return orderRepository.findByOrderId(orderId);
	}

}
