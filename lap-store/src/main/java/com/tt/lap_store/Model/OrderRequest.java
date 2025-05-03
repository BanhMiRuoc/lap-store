package com.tt.lap_store.Model;

import jakarta.persistence.Column;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.ToString;

@ToString
@Data
@Table(name = "orderrequest")
public class OrderRequest {
    private String firstName;
    private String lastName;

    private String email;
    private String mobileNo;

    private String address;

    private String city;

    private String state;

    private String pincode;
    private String paymentType;
}
