/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import com.findingcareer.pojo.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author hp
 */
@Controller
public class EmployeeController {
    
    @RequestMapping("/user/employee_profile")
    public String editProfileEmployeeView(Model model){
        model.addAttribute("employee", new Employee());
        return "employeeProfile";
    }
    

}
