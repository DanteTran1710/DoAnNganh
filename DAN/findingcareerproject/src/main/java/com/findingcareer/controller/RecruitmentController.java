/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import com.findingcareer.pojo.Recruitment;
import com.findingcareer.pojo.User;
import com.findingcareer.service.RecruitmentService;
import com.findingcareer.service.CategoryService;
import com.findingcareer.service.EmployerService;
import com.findingcareer.service.MostLikedService;
import com.findingcareer.service.UserService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author hp
 */
@Controller
public class RecruitmentController {
    @Autowired
    private RecruitmentService recruitmentService;
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private EmployerService employerService;
    @Autowired
    private UserService userService;
    @Autowired
    private MostLikedService mostLikedService;
    
    @GetMapping("/jobs")
    public String listJob(Model model,
            @RequestParam(required = false) Map<String, String> params) {
        String kw = params.getOrDefault("kw", null);
        String page = params.getOrDefault("page", "1");
        
        model.addAttribute("recruitment",
                this.recruitmentService.getListRecruitmentByCondition(kw, Integer.parseInt(page)));
        model.addAttribute("counter", this.recruitmentService.countRes());
        model.addAttribute("category", this.categoryService.getListCategory());
        return "job";
    }
    
    @GetMapping("/recruitment/{recruitmentId}")
    public String recruitment(Model model,
            @PathVariable(value = "recruitmentId") int recruitmentId) {
                 //GET USER BY USER NAME
        User u = this.userService.getUserByUsername(
                SecurityContextHolder.getContext().getAuthentication().getName());
        

        Recruitment r = this.recruitmentService.getRecruitmentById(recruitmentId);

        model.addAttribute("re", r);
        model.addAttribute("likebyE",this.mostLikedService.getLikeByEmployeeId(
                u.getEmployee().getIdEmployee(), recruitmentId));
        
        model.addAttribute("co",
                this.employerService.getEmployerById(r.getEmployer().getIdEmployer()));

        return "recruitment";
    }
}
