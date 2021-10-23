/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.repository.impl;

import com.findingcareer.pojo.Rating;
import com.findingcareer.repository.RatingRepository;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
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
public class RatingRepositoryImpl implements RatingRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public boolean addRating(Rating r) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        try{
            session.save(r);
            
            return true;
        } catch(HibernateException ex){
            System.err.println(ex.getMessage());
        }
        
        return false; 
    }

    @Override
    public Rating getRatingByEmployee(int idEmployee, int idEmployer) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Rating> query =  builder.createQuery(Rating.class);
        Root root = query.from(Rating.class);
        
        
        Predicate p1 = builder.equal(root.get("employee"), idEmployee);
        Predicate p2 = builder.equal(root.get("employer"), idEmployer);
        
        query = query.where(builder.and(p1,p2));
        
        Rating r = session.createQuery(query).uniqueResult();    
        
        return r; 
    }

    @Override
    public Object getAverageRatingCompany(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object> query =  builder.createQuery(Object.class);
        Root root = query.from(Rating.class);
        
        query.where(builder.equal(root.get("employer"), id));
        
        query.multiselect(root.get("employer"),builder.avg(root.get("star")));
        query.groupBy(root.get("employer"));
        
        Query q = session.createQuery(query);
        
        return q.getSingleResult();
    }
    
}
