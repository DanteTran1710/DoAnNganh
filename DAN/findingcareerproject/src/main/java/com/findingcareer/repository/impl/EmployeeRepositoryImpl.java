/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.repository.impl;

import com.findingcareer.pojo.Employee;
import com.findingcareer.pojo.User;
import com.findingcareer.repository.EmployeeRepository;
import java.util.List;
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
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public boolean addEmployee(Employee e) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
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
        Session session = this.sessionFactory.getObject().getCurrentSession();

        if (!e.getAvatarUrl().isEmpty() && !e.getAddress().isEmpty()
                && !e.getNationality().isEmpty() && !e.getPhoneNumber().isEmpty()) {
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

    @Override
    public List<Object> getListEmployee(String kw, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
        Root rootE = query.from(Employee.class);
        Root rootU = query.from(User.class);
        
        Predicate p = builder.equal(rootE.get("user"), rootU.get("idUser"));
        
        query.multiselect(rootU.get("idUser"),rootU.get("firstName").as(String.class),
                rootU.get("lastName"), rootU.get("email"), rootE.get("sex"),
                rootE.get("phoneNumber"), rootE.get("nationality"), rootE.get("idEmployee"));

        if (kw != null) {
            Predicate p1 = builder.equal(rootE.get("nationality").as(String.class), kw);
            
            query = query.where(builder.and(p1, p));
        }
        else
        {
            query = query.where((p));
        }
        query = query.orderBy(builder.desc(rootE.get("idEmployee")));

        Query q = session.createQuery(query);

        int max = 3;
        q.setMaxResults(max);

        q.setFirstResult((page - 1) * max);

        return q.getResultList();
    }

    @Override
    public long countEmployee() {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        Query q = session.createQuery("Select Count(*) from Employee");

        return Long.parseLong(q.getSingleResult().toString());
    }
}
