/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.repository.impl;

import com.findingcareer.pojo.Employee;
import com.findingcareer.repository.EmployeeRepository;
import javax.persistence.Query;
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
public class EmployeeRepositoryImpl implements EmployeeRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public boolean addEmployee(Employee e) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            System.err.println("ID:" + e.getIdEmployee());
            session.save(e);
            return true;
        } catch (HibernateException ex) {
            System.err.println(ex.getMessage());
        }

        return false;
    }

    @Override
    public boolean updateEmployee(Employee e) {
       Session session = this.sessionFactory.getObject().getCurrentSession();
        
        if(!e.getAvatarUrl().isEmpty() && !e.getAddress().isEmpty()
           && !e.getNationality().isEmpty() && !e.getPhoneNumber().isEmpty()){
            String query = "UPDATE Employee SET avatarUrl=:a, phoneNumber=:b, dob=:c,"
                    + "sex=:d, nationality=:e, address=:f WHERE idEmployee=:id ";
            Query q = session.createQuery(query);
            q.setParameter("a", e.getAvatarUrl());
            q.setParameter("b", e.getPhoneNumber());
            q.setParameter("c", e.getDob());
            q.setParameter("d", e.isSex());
            q.setParameter("e", e.getNationality());
            q.setParameter("f", e.getAddress());
            q.setParameter("id", e.getIdEmployee());
            
            q.executeUpdate();
            
            return true;
        }
        
        return false;
    }

    @Override
    public Employee getEmployeeById(int i) {
       Session session = this.sessionFactory.getObject().getCurrentSession();
       
       return session.get(Employee.class, i);
    }
}
