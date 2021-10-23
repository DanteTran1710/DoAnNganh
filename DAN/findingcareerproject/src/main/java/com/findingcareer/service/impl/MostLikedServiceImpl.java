/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.service.impl;

import com.findingcareer.pojo.MostLiked;
import com.findingcareer.pojo.Recruitment;
import com.findingcareer.pojo.User;
import com.findingcareer.repository.MostLikedRepository;
import com.findingcareer.repository.RecruitmentRepository;
import com.findingcareer.repository.UserRepository;
import com.findingcareer.service.MostLikedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

/**
 *
 * @author hp
 */
@Service
public class MostLikedServiceImpl implements MostLikedService{
    @Autowired
    private MostLikedRepository likedRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RecruitmentRepository recruitmentRepository; 
    
    @Override
    public boolean AddLike(int idRe) {
         //GET USER BY USER NAME
        User u = this.userRepository.getUserByUsername(
                SecurityContextHolder.getContext().getAuthentication().getName());
        
        MostLiked m = new MostLiked();
        
        Recruitment r = this.recruitmentRepository.getRecruitmentById(idRe);
        
        m.setRecruitment(r);
        
        m.setEmployer(r.getEmployer());
        m.setEmployee(u.getEmployee());
        m.setHeart(1);
        
        return this.likedRepository.AddLike(m);
    }

    @Override
    public MostLiked getLikeByEmployeeId(int i, int i1) {
        
        return this.likedRepository.getLikeByEmployeeId(i, i1);
    }
    
}
