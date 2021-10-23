/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import com.findingcareer.service.RatingService;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author hp
 */
@RestController
public class ApiRatingController {
    @Autowired
    private RatingService ratingService;
    
    @PostMapping(path= "/api/rate-star", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public void addStar(@RequestBody Map<String, String> params, HttpSession session){
        String msg=null;
        
        int star = Integer.parseInt(params.get("star"));
        int idCompany = Integer.parseInt(params.get("idEmployer"));
        
        if(this.ratingService.addRating(idCompany, star))
            msg = "Rating Star successfull!";
        else
            msg = "Rating Star unsuccessfull!"; 
        
        session.setAttribute("rateMsg", msg);
    }
}
