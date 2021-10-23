/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import com.findingcareer.service.MostLikedService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author hp
 */
@RestController
public class ApiMostLikedController {
    @Autowired
    private MostLikedService likedService;
    
    @GetMapping(path="/api/add-like/{id}")
    public int addLike(@PathVariable(value = "id") int idRe){
        
        if(this.likedService.AddLike(idRe))
            return 1;
        else
            return 0;
        
    }
}
