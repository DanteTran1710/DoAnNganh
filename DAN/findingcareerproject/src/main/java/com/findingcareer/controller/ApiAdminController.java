/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import com.findingcareer.pojo.Employer;
import com.findingcareer.service.EmployerService;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author hp
 */
@RestController
public class ApiAdminController {
    @Autowired
    private EmployerService employerService;

    @PostMapping(path = "/api/browse-employer")
    public void browseEmployer(@RequestBody Map<String, String> params) {
        int state = Integer.parseInt(params.getOrDefault("state","0"));
        int id = Integer.parseInt(params.get("id"));
        
        String msgState;

        Employer e = this.employerService.getEmployerById(id);
        
        if(state == 1)
            e.setActive(true);

        this.employerService.updateEmployerState(e);
    }
}
