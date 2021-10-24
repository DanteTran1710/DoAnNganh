/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.service.impl;

import com.findingcareer.pojo.MostLikedCompany;
import com.findingcareer.pojo.Employer;
import com.findingcareer.pojo.User;
import com.findingcareer.repository.MostLikedCompanyRepository;
import com.findingcareer.repository.EmployerRepository;
import com.findingcareer.repository.UserRepository;
import com.findingcareer.service.MostLikedCompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

/**
 *
 * @author hp
 */
@Service
public class MostLikedCompanyServiceImpl implements MostLikedCompanyService{
    @Autowired
    private MostLikedCompanyRepository likedRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private EmployerRepository employerRepository; 
    
    @Override
    public boolean AddLike(int idCo) {
 //GET USER BY USER NAME
        User u = this.userRepository.getUserByUsername(
                SecurityContextHolder.getContext().getAuthentication().getName());
        
        MostLikedCompany m = new MostLikedCompany();
        
        Employer e = this.employerRepository.getEmployerById(idCo);
        
        m.setEmployer(e);
        m.setEmployee(u.getEmployee());
        m.setHeart(1);
        
        return this.likedRepository.AddLike(m); 
    }

    @Override
    public MostLikedCompany getLikeByEmployeeId(int i, int i1) {
        return this.likedRepository.getLikeByEmployeeId(i, i1);
    }
}
