/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author hp
 */
@Controller
public class RecruitmentController {
    @GetMapping("/jobs")
    public String listJob(){
        
        return "job";
    }
    @GetMapping("/jobs/recruitment")
    public String recruitmentDescription(){
        
        return "recruitment";
    }
}
