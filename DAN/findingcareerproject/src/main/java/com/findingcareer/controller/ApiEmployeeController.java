/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import com.findingcareer.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author hp
 */
@RestController
public class ApiEmployeeController {
    @Autowired
    private EmployeeService employeeService;
    @GetMapping("api/employer/employee-details/{employeeId}")
    public ResponseEntity<Object> employeeDetails(
            @PathVariable(value = "employeeId") int idE){
        try{
            
            Object o = this.employeeService.getDetailsEmployeeById(idE);
            
            return new ResponseEntity<>(o, HttpStatus.CREATED);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }
}
