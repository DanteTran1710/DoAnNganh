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

    @GetMapping("/user/add-employee")
    public String addEmployeeView(Model model, @RequestParam Map<String, String> params) {
        this.username = params.get("username");
        model.addAttribute("employee", new Employee());

        return "addEmployee";
    }

    @PostMapping("/user/add-employee")
    public String addEmployee(Model model,
            @ModelAttribute(value = "employee") Employee employee) {
        String errorMessage;
        // LOAD IMAGE UP TO CLOUDINARY
        String img = null;
        try {
            Map r = this.cloudinary.uploader().upload(employee.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            //GET IMAGE'S URL AND ADD TO DATABASE
            img = (String) r.get("secure_url");
        } catch (IOException ex) {
            System.err.println("Failure: " + ex.getMessage());
        }

        //GET USER BY USER NAME
        User u = this.userService.getUserByUsername(username);
        // SET NEW ROLE FOR USER
        u.setUserRole("ROLE_EMPLOYEE");
        // SET ID USER FOR EMPLOYER
        employee.setUser(u);
        //SET AVARTAR
        employee.setAvatarUrl(img);
        // ADD NEW EMPLOYER

        if (this.employeeService.addEmployee(employee) == true) {
            // CHANGE USER ROLE
            this.userService.updateUserRole(u);
            return "redirect:/login";
        } else {
            errorMessage = "Hệ thống hiện đang lỗi! Vui lòng thử lại sau";
        }

        model.addAttribute("errorMessage", errorMessage);

        return "addEmployee";
    }

    @GetMapping("/employee/employee-profile")
    public String editProfileEmployeeView(Model model,
            @RequestParam Map<String, String> params) {

        this.username = params.get("username");

        User u = this.userService.getUserByUsername(username);

        model.addAttribute("employee",
                this.employeeService.getEmployeeById(u.getEmployee().getIdEmployee()));

        return "employeeProfile";
    }

    @PostMapping("/employee/employee-profile")
    public String editProfileEmployee(Model model,
            @ModelAttribute(value = "employee") Employee e) {

        String message;

        //GET USER BY USER NAME
        User u = this.userService.getUserByUsername(username);
        
        String img = null;
        try {
            Map r = this.cloudinary.uploader().upload(e.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            //GET IMAGE'S URL AND ADD TO DATABASE
            img = (String) r.get("secure_url");
        } catch (IOException ex) {
            System.err.println("Failure: " + ex.getMessage());
        }

        e.setIdEmployee(u.getEmployee().getIdEmployee());
        e.setAvatarUrl(img);
        if (this.employeeService.updateEmployee(e)) {
            message = "Cập nhật dữ liệu thành công!";
        } else {
            message = "Cập nhật dữ liệu thất bại";
        }
        model.addAttribute("message", message);

        return "employeeProfile";
    }
}
