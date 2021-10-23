/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import com.findingcareer.service.CVsForRecruitmentsService;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author hp
 */
@RestController
public class ApiCVsForRecruitmentsController {
    @Autowired
    private CVsForRecruitmentsService cVsForRecruitmentsService;
    
    @GetMapping(path="/api/add-cv/{id}")
    public void addCV(@PathVariable(value = "id") int idRe, HttpSession session){
        String msg;
        
        if(this.cVsForRecruitmentsService.addCV(idRe))
            msg = "Apply CV successfull!";
        else
            msg = "Apply CV unsuccessfull!"; 
        
        session.setAttribute("addCvMsg", msg);
        
    }
    
}
