/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.repository.impl;

import com.findingcareer.pojo.Employee;
import com.findingcareer.repository.EmployeeRepository;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
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
    private LocalSessionFactoryBean sessionFactoryBean;

    @Override
    public boolean addEmployee(Employee e) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();

        try {
            session.save(e);

            return true;
        } catch (HibernateException ex) {
            System.err.println(ex.getMessage());
        }

        return false;
    }

    @Override
    public boolean updateEmployee(Employee e) {
       Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        
        if(!e.getAvatarUrl().isEmpty() && !e.getAddress().isEmpty()
           && !e.getNationality().isEmpty() && !e.getPhoneNumber().isEmpty()){
            String query = "UPDATE Employee SET avatarUrl=:a, phoneNumber:=b, dob:=c"
                    + "sex:=d, nationality:=e, address:=f WHERE idUser=:id ";
            Query q = session.createQuery(query);
            q.setParameter("a", e.getAvatarUrl());
            q.setParameter("b", e.getPhoneNumber());
            q.setParameter("c", e.getDob());
            q.setParameter("d", e.isSex());
            q.setParameter("e", e.getNationality());
            q.setParameter("f", e.getAddress());
            q.setParameter("id", e.getUser().getIdUser());
            
            q.executeUpdate();
            
            return true;
        }
        
        return false;
    }

    @Override
    public Employee getEmployeeByUserId(int id) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Employee> query = builder.createQuery(Employee.class);
        Root root = query.from(Employee.class);
        query = query.select(root);
        
        Predicate p = builder.equal(root.get("idEmployee"), id);

            query = query.where(p);
        

        Employee employee = session.createQuery(query).uniqueResult();
        return employee;
    }

}
