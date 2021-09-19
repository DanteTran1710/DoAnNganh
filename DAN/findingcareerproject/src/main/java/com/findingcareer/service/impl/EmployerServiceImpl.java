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
import org.springframework.stereotype.Service;

/**
 *
 * @author hp
 */
@Service
public class EmployerServiceImpl implements EmployerService{
    @Autowired
    private EmployerRepository employerRepository;
    
    @Override
    public boolean addEmployer(Employer e) {
        
        return this.employerRepository.addEmployer(e);
    }

    @Override
    public Employer getEmployerById(int id) {
        return this.employerRepository.getEmployerById(id);
    }
    
}
