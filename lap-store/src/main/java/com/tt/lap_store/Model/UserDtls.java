package com.tt.lap_store.Model;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Date;

@Data
@Entity
@Table(name = "userdtls")
public class UserDtls {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;
    private String mobileNumber;
    private String email;
    private String address;
    private String city;
    private String state;
    private String pincode;
    private String password;
    private String profileImage;
    private String role;
    private Boolean isEnable = true;
    private Boolean accountNonLocked = true;
    private Integer failedAttempts = 0;
    private Date lockTime;
    private String resetToken;
}
