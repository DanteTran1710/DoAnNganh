/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.repository.impl;

import com.findingcareer.pojo.Employer;
import com.findingcareer.repository.EmployerRepository;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author hp
 */
@Repository
@Transactional
public class EmployerRepositoryImpl implements EmployerRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactoryBean;
    
    @Override
    public boolean addEmployer(Employer e) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        
        try{
            session.save(e);
            
            return true;
        } catch(HibernateException ex){
            System.err.println(ex.getMessage());
        }
        
        return false;
    }

    @Override
    public boolean updateEmployer(Employer e) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        
        
//        if(!e.getUserRole().isEmpty()){
//            Query q = session.createQuery("UPDATE employer SET userRole=:ul WHERE id=:id ");
//            q.setParameter("ul", user.getUserRole());
//            q.setParameter("id", user.getIdUser());
//            
//            q.executeUpdate();
//            
//            return true;
//        }
//        
        return false;
    }

    @Override
    public Employer getEmployerById(int id) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        
        return session.get(Employer.class, id);
    }
    
}
