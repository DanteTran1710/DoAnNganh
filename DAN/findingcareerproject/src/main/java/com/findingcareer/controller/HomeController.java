/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
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
    private LocalSessionFactoryBean sessionFactory;
    
    @RequestMapping(value = "/")
    public String index(Model model){
        
        return "home";
    }
    
    @RequestMapping(path = "/login")
    public String Login(Model model){
        
        return "login";
    }
    
    @RequestMapping(path = "/signup")
    public String Signup(Model model){
        
        return "signup";
    }
    
    @RequestMapping(path = "/admin")
    public String admin(Model model){
        
        return "dashboard";
    }
}
