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
    private Cloudinary cloudinary;
    @Autowired
    private UserService userService;
    @Autowired
    private EmployeeService employeeService;
    
    String username;

    @GetMapping("/user/employee_profile")
    public String editProfileEmployeeView(Model model,
            @RequestParam Map<String, String> params) {

        this.username = params.get("username");

        User u = this.userService.getUserByUsername(username);

        if (u.getUserRole().equals("ROLE_USER")) {
            model.addAttribute("employee", new Employee());
        } else if (u.getUserRole().equals("ROLE_EMPLOYEE")){
            Employee e = this.employeeService.getEmployeeById(u.getEmployee().getIdEmployee());
            model.addAttribute("employee",e);
        }
        
        return "employeeProfile";
    }

    @PostMapping("/user/employee_profile")
    public String editProfileEmployee(Model model,
            @ModelAttribute(value = "employee") Employee e) {

        // LOAD IMAGE UP TO CLOUDINARY
        String img = null;
        try {
            Map r = this.cloudinary.uploader().upload(e.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            //GET IMAGE'S URL AND ADD TO DATABASE
            img = (String) r.get("secure_url");
        } catch (IOException ex) {
            System.err.println("Failure: " + ex.getMessage());
        }

        String message;

        //GET USER BY USER NAME
        User u = this.userService.getUserByUsername(username);

        //CHECK OUT FOR SIGN UP EMPLOYEE ACCOUNT
        if (u.getUserRole().equals("ROLE_USER")) {
            // SET NEW ROLE FOR USER
            u.setUserRole("ROLE_EMPLOYEE");
            // SET ID USER FOR EMPLOYEE
            e.setUser(u);
            e.setAvatarUrl(img);
            // ADD NEW EMPLOYER
            if (this.employeeService.addEmployee(e) == true) {
                // CHANGE USER ROLE
                this.userService.updateUserRole(u);
                return "redirect:/login";
            } else {
                message = "Hệ thống hiện đang lỗi! Vui lòng thử lại sau";
            }
        } // EDIT PROFILE 
        else {
            e.setIdEmployee(u.getEmployee().getIdEmployee());
            e.setAvatarUrl(img);
            if (this.employeeService.updateEmployee(e)) {
                message = "Cập nhật dữ liệu thành công!";
            } else {
                message = "Cập nhật dữ liệu thất bại";
            }
        }
        model.addAttribute("message", message);

        return "employeeProfile";
    }
}
