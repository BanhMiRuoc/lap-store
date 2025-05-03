package com.tt.lap_store.Model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "orderaddress")
public class OrderAddress {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String firstName;
    private String lastName;

    private String email;
    private String mobileNo;

    private String address;

    private String city;

    private String state;

    private String pincode;
}
