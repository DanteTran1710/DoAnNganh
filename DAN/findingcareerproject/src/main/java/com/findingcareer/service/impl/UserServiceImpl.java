/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.service.impl;

import com.findingcareer.pojo.User;
import com.findingcareer.repository.UserRepository;
import com.findingcareer.service.UserService;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/** 
 *
 * @author hp
 */
@Service("userDetailsService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    @Transactional
    public boolean addUser(User user) {
        return this.userRepository.addUser(user);
    }

    @Override
    @Transactional
    public List<User> getListUser(String username) {
        return this.userRepository.getListUser(username);
    }

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // Method get users
        List<User> users = userRepository.getListUser(username);
        
        if(users.isEmpty()){
            throw new UsernameNotFoundException("Không tồn tại người dùng này!");
        }
        
        User user = users.get(0);
        
        // Method check access permission
        Set<GrantedAuthority> authorities = new HashSet<>();
        authorities.add(new SimpleGrantedAuthority(user.getUserRole()));
        
        return new org.springframework.security.core.userdetails
                .User(user.getUserName(), user.getPassword(), authorities);
    }
}
