/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author hp
 */
@Controller
public class HomeController {
    @GetMapping("/test")
    public String Login(){
        
        return "test";
    }
    
    
    @RequestMapping(value = "/")
    public String index(Model model){
        
        return "home";
    }
    
    @RequestMapping(value = "/admin/test")
    public String test(Model model){
        
        return "test";
    }
}
