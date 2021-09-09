/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.service.impl;

import com.findingcareer.pojo.Employee;
import com.findingcareer.repository.EmployeeRepository;
import com.findingcareer.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 *
 * @author hp
 */
@Controller
public class EmployeeServiceImpl implements EmployeeService{
    @Autowired
    private EmployeeRepository employeeRepository;
    
    @Override
    public boolean addEmployee(Employee e) {
        
        return this.employeeRepository.addEmployee(e);
    }
    
}
