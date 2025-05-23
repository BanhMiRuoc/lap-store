package com.tt.lap_store.Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(length = 500)
    private String title;

    @Column(length = 5000)
    private String description;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    private Double price;

    private int stock;

    private String image;

    private int discount;

    private Double discountPrice;

    private Boolean isActive;
}
