/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.findingcareer.pojo.Employee;
import com.findingcareer.pojo.User;
import com.findingcareer.repository.EmployeeRepository;
import com.findingcareer.repository.UserRepository;
import com.findingcareer.service.EmployeeService;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;

/**
 *
 * @author hp
 */
@Controller
public class EmployeeServiceImpl implements EmployeeService{
    @Autowired
    private EmployeeRepository employeeRepository;
    @Autowired
    private Cloudinary cloudinary;
    @Autowired
    private UserRepository userRepository;
    
    @Override
    public boolean addEmployee(Employee employee) {
        // LOAD IMAGE UP TO CLOUDINARY
        String img = null;
        try {
            Map r = this.cloudinary.uploader().upload(employee.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            //GET IMAGE'S URL AND ADD TO DATABASE
            img = (String) r.get("secure_url");
        } catch (IOException ex) {
            System.err.println("Failure: " + ex.getMessage());
        }
        //SET AVARTAR
        employee.setAvatarUrl(img);
        //GET USER BY USER NAME
        User u = this.userRepository.getUserByUsername(
                SecurityContextHolder.getContext().getAuthentication().getName());
        // SET NEW ROLE FOR USER
        u.setUserRole("ROLE_EMPLOYEE");
        // SET ID USER FOR EMPLOYER
        employee.setUser(u);
        //UPDATE ROLE IN USER
        this.userRepository.updateUserRole(u);
        
        return this.employeeRepository.addEmployee(employee);
    }

    @Override
    public boolean updateEmployee(Employee e) {
        //GET USER BY USER NAME
        User u = this.userRepository.getUserByUsername(
                SecurityContextHolder.getContext().getAuthentication().getName());
        
        String img = null;
        try {
            Map r = this.cloudinary.uploader().upload(e.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            //GET IMAGE'S URL AND ADD TO DATABASE
            img = (String) r.get("secure_url");
        } catch (IOException ex) {
            System.err.println("Failure: " + ex.getMessage());
        }
        //UPDATE AVARTAR
        e.setAvatarUrl(img);

        e.setIdEmployee(u.getEmployee().getIdEmployee());
        
        return this.employeeRepository.updateEmployee(e);
    }

    @Override
    public Employee getEmployeeById(int i) {
        return this.employeeRepository.getEmployeeById(i);
    }

    @Override
    public List<Object> getListEmployee(String string, int i) {
        return this.employeeRepository.getListEmployee(string, i);
    }

    @Override
    public long countEmployee() {
        return this.employeeRepository.countEmployee();
    }
    
}
