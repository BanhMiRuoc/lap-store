package com.tt.lap_store.Controller;

import com.tt.lap_store.Model.UserDtls;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;

@Controller
@RequestMapping("/user")
public class UserController {

    @GetMapping("/")
    public String home() {
        return "user/home";
    }

    @ModelAttribute
    public User getUserDetails(Principal p, Model model) {
        if (p != null) {
            String email = p.getName();

        }
    }
}
