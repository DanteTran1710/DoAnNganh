/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import com.findingcareer.pojo.Employer;
import com.findingcareer.pojo.User;
import com.findingcareer.service.EmployerService;
import com.findingcareer.service.UserService;
import java.util.Map;
import Utils.Utils;
import com.findingcareer.pojo.Recruitment;
import java.util.List;
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
public class EmployerController {

    @Autowired
    private UserService userService;
    @Autowired
    private EmployerService employerService;

    private String username;

    @GetMapping("/user/add-employer")
    public String addEmployerView(Model model, @RequestParam Map<String, String> params) {
        this.username = params.get("username");
        model.addAttribute("employer", new Employer());

        return "addEmployer";
    }

    @PostMapping("/user/add-employer")
    public String addEmployer(Model model,
            @ModelAttribute(value = "employer") Employer employer) {
        String errorMessage;

        //GET USER BY USER NAME
        User u = this.userService.getUserByUsername(username);
        // SET NEW ROLE FOR USER
        u.setUserRole("ROLE_EMPLOYER");
        // SET ID USER FOR EMPLOYER
        employer.setUser(u);
        // ADD NEW EMPLOYER

        if (this.employerService.addEmployer(employer) == true) {
            // CHANGE USER ROLE
            this.userService.updateUserRole(u);
            return "redirect:/login";
        } else {
            errorMessage = "Hệ thống hiện đang lỗi! Vui lòng thử lại sau";
        }

        model.addAttribute("errorMessage", errorMessage);

        return "addEmployer";
    }

    @GetMapping("/employer/employer-profile")
    public String profileEmployerView(Model model, @RequestParam Map<String, String> params) {
        username = params.get("username");

        User u = this.userService.getUserByUsername(username);

        model.addAttribute("employer",
                this.employerService.getEmployerById(u.getEmployer().getIdEmployer()));

        return "employerProfile";
    }

    @PostMapping("/employer/employer-profile")
    public String profileEmployer(Model model,
            @ModelAttribute(value = "employer") Employer e) {
        String message;
        
        e.setIdEmployer(this.userService.
                getUserByUsername(username).getEmployer().getIdEmployer());
        if (this.employerService.updateEmployer(e) == true) {

            message = "Cập nhật dữ liệu thành công";
        } else {
            message = "Hệ thống hiện đang lỗi! Vui lòng thử lại sau";
        }

        model.addAttribute("message", message);

        return "employerProfile";
    }
    
    @GetMapping("/employer/manage")
    public String recruitmentByCompany(Model model,@RequestParam Map<String, String> params){
        
        username = params.get("username");
        String page = params.getOrDefault("page", "1");
        
        User u = this.userService.getUserByUsername(username);
        
        Employer e = this.employerService.getEmployerById(u.getEmployer().getIdEmployer());
        
        model.addAttribute("recruitments",Utils.pagination(e.getListRecruiment(),page,2));
        model.addAttribute("un", username);
        
        return "manageRecruitment";
    }
}
