/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.service.impl;

import com.findingcareer.pojo.Rating;
import com.findingcareer.pojo.User;
import com.findingcareer.repository.EmployerRepository;
import com.findingcareer.repository.RatingRepository;
import com.findingcareer.repository.UserRepository;
import com.findingcareer.service.RatingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

/**
 *
 * @author hp
 */
@Service
public class RatingServiceImpl implements RatingService{
    @Autowired
    private RatingRepository ratingRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private EmployerRepository employerRepository;
    
    @Override
    public boolean addRating(int id, int star) {
        //GET USER BY USER NAME
        User u = this.userRepository.getUserByUsername(
                SecurityContextHolder.getContext().getAuthentication().getName());
        
        Rating r = new Rating();
        
        r.setEmployee(u.getEmployee());
        r.setStar(star);
        r.setEmployer(this.employerRepository.getEmployerById(id));
                
        return this.ratingRepository.addRating(r);
    }

    @Override
    public Rating getRatingByEmployee(int id1, int id2) {
        return this.ratingRepository.getRatingByEmployee(id1,id2);
    }

    @Override
    public Object getAverageRatingCompany(int id) {
        return this.ratingRepository.getAverageRatingCompany(id);
    }
    
}
