package com.tt.lap_store.Model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Entity
public class Cart {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    private Product product;

    @ManyToOne
    private UserDtls user;

    private Integer quantity;

    @Transient
    private Double totalPrice;

    @Transient
    private Double totalOrderPrice;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public Product getProduct() {
        return product;
    }
    public void setProduct(Product product) {
        this.product = product;
    }
    public UserDtls getUser() {
        return user;
    }
    public void setUser(UserDtls user) {
        this.user = user;
    }
    public Integer getQuantity() {
        return quantity;
    }
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
    public Double getTotalPrice() {
        return totalPrice;
    }
    public void setTotalPrice(Double totalPrice) {
        this.totalPrice = totalPrice;
    }
    public Double getTotalOrderPrice() {
        return totalOrderPrice;
    }
    public void setTotalOrderPrice(Double totalOrderPrice) {
        this.totalOrderPrice = totalOrderPrice;
    }


}
