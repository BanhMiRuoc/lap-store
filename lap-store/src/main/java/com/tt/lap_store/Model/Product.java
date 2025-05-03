package com.tt.lap_store.Model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(length = 500)
    private String title;

    @Column(length = 5000)
    private String description;

    private String category;

    private Double price;

    private int stock;

    private String image;

    private int discount;

    private Double discountPrice;

    private Boolean isActive;
}
