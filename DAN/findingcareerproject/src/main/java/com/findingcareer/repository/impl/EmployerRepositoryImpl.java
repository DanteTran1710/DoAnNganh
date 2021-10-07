/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.repository.impl;

import com.findingcareer.pojo.Employer;
import com.findingcareer.repository.EmployerRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import javax.persistence.Query;
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
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public boolean addEmployer(Employer e) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
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
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
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
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        return session.get(Employer.class, id);
    }

    @Override
    public List<Employer> getListEmployerByName(String kw, int page) {
   Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Employer> query = builder.createQuery(Employer.class);
        Root root = query.from(Employer.class);
        query = query.select(root);

        if (kw != null) {
            Predicate p = builder.like(root.get("companyName").as(String.class),
                    String.format("%%%s%%", kw));
            
            query = query.where(p);
        }
        query = query.orderBy(builder.desc(root.get("idEmployer")));

        Query q = session.createQuery(query);
        
        int max = 3;
        q.setMaxResults(max);
        
        q.setFirstResult((page-1)*max);

        return q.getResultList(); 
    }

    @Override
    public long countEmployer() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        Query q = session.createQuery("Select Count(*) from Employer");
        
        return Long.parseLong(q.getSingleResult().toString());
    }
    
}
