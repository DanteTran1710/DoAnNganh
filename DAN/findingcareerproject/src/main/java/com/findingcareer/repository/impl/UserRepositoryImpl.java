/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.repository.impl;

import com.findingcareer.pojo.User;
import org.springframework.stereotype.Repository;
import com.findingcareer.repository.UserRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author hp
 */
@Repository
@Transactional
public class UserRepositoryImpl implements UserRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactoryBean;
    
    @Override
    @Transactional
    public List<User> getListUser() {
        
       return null;
    }
    
}
