/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import com.findingcareer.service.RecruitmentService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author hp
 */
@Controller
public class RecruitmentController {
    @Autowired
    private RecruitmentService recruitmentService;
    
    @GetMapping("/jobs")
    public String listJob(Model model,
            @RequestParam(required = false) 
                    Map<String, String> params){
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        
        model.addAttribute("recruitment", 
                this.recruitmentService.getListRecruitment(params.get("kw"), page));
        model.addAttribute("counter", this.recruitmentService.countRecruitment());
        
        return "job";
    }
    @GetMapping("/jobs/recruitment")
    public String recruitmentDescription(){
        
        return "recruitment";
    }
}
