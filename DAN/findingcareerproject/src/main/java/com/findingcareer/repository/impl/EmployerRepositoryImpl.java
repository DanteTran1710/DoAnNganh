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
import org.hibernate.query.Query;
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
        
        if(!e.getCompanyName().isEmpty() && !e.getAddress().isEmpty()
           && !e.getDescription().isEmpty() && !e.getOrientation().isEmpty()
           && !e.getPhoneNumber().isEmpty()){
            String query = "UPDATE Employer SET companyName=:a, phoneNumber=:b, orientation=:c,"
                    + "description=:d, address=:f WHERE idEmployer=:id ";
            javax.persistence.Query q = session.createQuery(query);
            q.setParameter("a", e.getCompanyName());
            q.setParameter("b", e.getPhoneNumber());
            q.setParameter("c", e.getOrientation());
            q.setParameter("d", e.getDescription());
            q.setParameter("f", e.getAddress());
            q.setParameter("id", e.getIdEmployer());
            
            q.executeUpdate();
            
            return true;
        }
        return false;
    }

    @Override
    public Employer getEmployerById(int id) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        
        return session.get(Employer.class, id);
    }
    
}
