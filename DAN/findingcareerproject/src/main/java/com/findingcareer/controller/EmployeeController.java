/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.findingcareer.pojo.Employee;
import com.findingcareer.pojo.User;
import com.findingcareer.service.EmployeeService;
import com.findingcareer.service.UserService;
import java.io.IOException;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
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
    private EmployeeService employeeService;
    @Autowired
    private UserService userService;

    @GetMapping("/user/add-employee")
    public String addEmployeeView(Model model) {
        model.addAttribute("employee", new Employee());

        return "addEmployee";
    }

    @PostMapping("/user/add-employee")
    public String addEmployee(Model model,
            @ModelAttribute(value = "employee") Employee employee) {
        String errorMessage;
        
        // ADD NEW EMPLOYER
        if (this.employeeService.addEmployee(employee) == true) {
            return "redirect:/login";
        } else {
            errorMessage = "Hệ thống hiện đang lỗi! Vui lòng thử lại sau";
        }

        model.addAttribute("errorMessage", errorMessage);

        return "addEmployee";
    }

    @GetMapping("/employee/employee-profile")
    public String editProfileEmployeeView(Model model) {
        
        User u = this.userService.getUserByUsername(
                SecurityContextHolder.getContext().getAuthentication().getName());

        model.addAttribute("employee",
                this.employeeService.getEmployeeById(u.getEmployee().getIdEmployee()));

        return "employeeProfile";
    }

    @PostMapping("/employee/employee-profile")
    public String editProfileEmployee(Model model,
            @ModelAttribute(value = "employee") Employee e) {

        String message;
        
        if (this.employeeService.updateEmployee(e)) {
            message = "Cập nhật dữ liệu thành công!";
        } else {
            message = "Cập nhật dữ liệu thất bại";
        }
        model.addAttribute("message", message);

        return "employeeProfile";
    }
}
