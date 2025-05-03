package com.tt.lap_store.Model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Data
@Table(name = "category")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String imageName;
    private Boolean isActive;
}
