/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import com.findingcareer.pojo.Employee;
import com.findingcareer.pojo.User;
import com.findingcareer.service.EmployeeService;
import com.findingcareer.service.UserService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author hp
 */
@Controller
public class EmployeeController {

    @Autowired
    private UserService userService;

    @Autowired
    private EmployeeService employeeService;

    String username;

    @GetMapping("/user/employee_profile")
    public String editProfileEmployeeView(Model model,
            @RequestParam Map<String, String> params) {

        this.username = params.get("username");
        model.addAttribute("employee", new Employee());

        return "employeeProfile";
    }

    @PostMapping("/user/employee_profile")
    public String editProfileEmployee(Model model,
            @ModelAttribute(value = "employee") Employee e) {
        String errorMessage = null;

        //GET USER BY USER NAME
        User u = this.userService.getUserByUsername(username);

        //CHECK OUT FOR SIGN UP EMPLOYEE ACCOUNT
        if (u.getUserRole().equals("ROLE_USER")) {
            // SET NEW ROLE FOR USER
            u.setUserRole("ROLE_EMPLOYEE");
            // SET ID USER FOR EMPLOYEE
            e.setUser(u);
            // ADD NEW EMPLOYER
            if (this.employeeService.addEmployee(e) == true) {
                // CHANGE USER ROLE
                this.userService.updateUser(u);
                return "redirect:/login";
            } else {
                errorMessage = "Hệ thống hiện đang lỗi! Vui lòng thử lại sau";
            }
        } // EDIT PROFILE 
        else {
            return "/user/employee_profile";
        }
        model.addAttribute("errorMessage", errorMessage);

        return "employeeProfile";
    }
}
