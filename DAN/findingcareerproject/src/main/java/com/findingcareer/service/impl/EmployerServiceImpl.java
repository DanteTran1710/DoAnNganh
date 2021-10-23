/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.service.impl;

import com.findingcareer.pojo.Employer;
import com.findingcareer.pojo.User;
import com.findingcareer.repository.EmployerRepository;
import com.findingcareer.repository.UserRepository;
import com.findingcareer.service.EmployerService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

/**
 *
 * @author hp
 */
@Service
public class EmployerServiceImpl implements EmployerService{
    @Autowired
    private EmployerRepository employerRepository;
    @Autowired
    private UserRepository userRepository;
    
    @Override
    public boolean addEmployer(Employer e) {
        //GET USER BY USER NAME
        User u = this.userRepository.getUserByUsername(
                SecurityContextHolder.getContext().getAuthentication().getName());
        // SET NEW ROLE FOR USER
        u.setUserRole("ROLE_EMPLOYER");
        // SET ID USER FOR EMPLOYER
        e.setUser(u);
        // CHANGE USER ROLE
        this.userRepository.updateUserRole(u);
        
        e.setActive(false);
        
        return this.employerRepository.addEmployer(e);
    }

    @Override
    public Employer getEmployerById(int id) {
        return this.employerRepository.getEmployerById(id);
    }

    @Override
    public boolean updateEmployer(Employer e) {
        User u = this.userRepository.getUserByUsername(
                SecurityContextHolder.getContext().getAuthentication().getName());
        
        e.setIdEmployer(u.getEmployer().getIdEmployer());
        
        return this.employerRepository.updateEmployer(e);
    }

    @Override
    public List<Object[]> getListEmployerByName(String string, int page) {
        return this.employerRepository.getListEmployerByName(string, page);
    }
    
}
