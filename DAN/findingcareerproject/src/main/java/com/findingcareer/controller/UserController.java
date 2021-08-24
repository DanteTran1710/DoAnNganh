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
public class UserController {
    @GetMapping("/login")
    public String Login(){
        
        return "login";
    }
//    @RequestMapping(path = "/signup")
//    public String Signup(Model model){
//        
//        return "signup";
//    }
//    
//    @RequestMapping(path = "/admin")
//    public String admin(Model model){
//        
//        return "dashboard";
//    }
}
