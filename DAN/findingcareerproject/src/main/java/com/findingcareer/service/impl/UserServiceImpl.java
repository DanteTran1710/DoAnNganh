/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.service.impl;

import com.findingcareer.pojo.User;
import com.findingcareer.repository.UserRepository;
import com.findingcareer.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author hp
 */
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserRepository userRepository;
    
    @Override
    public List<User> getListUser() {
        return this.userRepository.getListUser();
    }
    
}
