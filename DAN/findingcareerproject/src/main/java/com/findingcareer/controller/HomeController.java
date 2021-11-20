/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import com.findingcareer.service.EmployerService;
import com.findingcareer.service.RecruitmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author hp
 */
@Controller
public class HomeController {
    @Autowired
    private EmployerService employerService; 
    @Autowired
    private RecruitmentService recruitmentService;
    
    @RequestMapping(value = "/")
    public String index(Model model){
        
        model.addAttribute("favCom", this.employerService.getFavoriteCompanies());
        model.addAttribute("re",
                this.recruitmentService.getListRecruitmentByCondition("", 1));
        
        return "home";
    }
}
