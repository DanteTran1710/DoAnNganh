/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import com.findingcareer.service.MostLikedRecruitmentService;
import com.findingcareer.service.MostLikedCompanyService;

/**
 *
 * @author hp
 */
@RestController
public class ApiMostLikedController {
    @Autowired
    private MostLikedRecruitmentService likedRecruitmentService;
    @Autowired
    private MostLikedCompanyService likedCompanyService;
    
    @GetMapping(path="/api/add-re-like/{id}")
    public int addReLike(@PathVariable(value = "id") int idRe){
        
        if(this.likedRecruitmentService.AddLike(idRe))
            return 1;
        else
            return 0;
        
    }
    @GetMapping(path="/api/add-co-like/{id}")
    public int addCoLike(@PathVariable(value = "id") int idCo){
        
        if(this.likedCompanyService.AddLike(idCo))
            return 1;
        else
            return 0;
        
    }
}
