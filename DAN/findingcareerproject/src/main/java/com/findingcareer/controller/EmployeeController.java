/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import com.findingcareer.pojo.Employee;
import com.findingcareer.pojo.User;
import com.findingcareer.service.EmployeeService;
import com.findingcareer.service.EmployerService;
import com.findingcareer.service.UserService;
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
    @Autowired
    private EmployerService employerService;

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
    
     @GetMapping("/employee/find-employers")
    public String listJob(Model model,
            @RequestParam(required = false) Map<String, String> params) {
        String kw = params.getOrDefault("kw", null);
        String page = params.getOrDefault("page", "1");
//        String position = params.getOrDefault("position", null);
//        String salary = params.get("salary");
//        String idCate = params.get("idCat");
//        String now = params.get("now");
        
//        if(now != null){
//            model.addAttribute("recruitment",
//                    Utils.pagination(this.recruitmentService.
//                            getListRecruitmentByNow(Integer.parseInt(now)), page,3));
//            model.addAttribute("now",now);
//        }
//        else if(salary != null){
//            String[] l = salary.split("-");
//            
//            model.addAttribute("recruitment",
//                    Utils.pagination(this.recruitmentService.getListRecruitmentBySalary(
//                            Integer.parseInt(l[0]),Integer.parseInt(l[1])), page,3));
//        }   
//        else if (position != null) {
//            // POSITION CONDITIONS
//            model.addAttribute("recruitment",
//                    Utils.pagination(this.recruitmentService.getListRecruitmentByFilter(position), page,3));
//            model.addAttribute("position", position);
//        } else if (idCate != null && position == null) {
//            // CATEGORY CONDITIONS
//            CategoryJob c = this.categoryService.getCategoryById(Integer.parseInt(idCate));
//            model.addAttribute("recruitment", Utils.pagination(c.getListRecruitment(), page,3));
//            model.addAttribute("idCate", idCate);
//
//        } else{
//            
//        }
//        
        // KEYWORDS CONDITIONS AND NO CONDITIONS
            model.addAttribute("employer",
                    this.employerService.getListEmployerByName(kw, Integer.parseInt(page)));
            model.addAttribute("counter", this.employerService.countEmployer());

        return "listEmployers";
    }

}
