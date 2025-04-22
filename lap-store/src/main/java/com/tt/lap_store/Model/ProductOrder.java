package com.tt.lap_store.Model;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDate;

@Data
@Entity
public class ProductOrder {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String orderId;

    private LocalDate orderDate;

    @ManyToOne
    private Product product;

    private Double price;

    private Integer quantity;

    @ManyToOne
    private UserDtls user;

    private String status;

    private String paymentType;

    @OneToOne(cascade = CascadeType.ALL)
    private OrderAddress orderAddress;
}
