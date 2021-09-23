/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.service.impl;

import com.findingcareer.pojo.Employer;
import com.findingcareer.repository.EmployerRepository;
import com.findingcareer.service.EmployerService;
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
        e.setActive(false);
        return this.employerRepository.addEmployer(e);
    }

    @Override
    public Employer getEmployerById(int id) {
        return this.employerRepository.getEmployerById(id);
    }

    @Override
    public boolean updateEmployer(Employer emplr) {
        return this.employerRepository.updateEmployer(emplr);
    }
    
}
