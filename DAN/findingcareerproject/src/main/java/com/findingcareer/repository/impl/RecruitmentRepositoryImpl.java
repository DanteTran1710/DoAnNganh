/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.repository.impl;

import com.findingcareer.pojo.CategoryJob;
import com.findingcareer.pojo.Recruitment;
import com.findingcareer.repository.RecruitmentRepository;
import java.math.BigDecimal;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
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
public class RecruitmentRepositoryImpl implements RecruitmentRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactoryBean;

    @Override
    public List<Recruitment> getListRecruitment(String kw) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Recruitment> query = builder.createQuery(Recruitment.class);
        Root root = query.from(Recruitment.class);
        query = query.select(root);

        if (kw != null) {
            Predicate p = builder.like(root.get("title").as(String.class),
                    String.format("%%%s%%", kw));

            query = query.where(p);
        }

        Query q = session.createQuery(query);

        return q.getResultList();
    }

    @Override
    public Recruitment getRecruitmentById(int id) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();

        return session.get(Recruitment.class, id);
    }

    @Override
    public List<Recruitment> getListRecruitmentByFilter(String pos) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Recruitment> query = builder.createQuery(Recruitment.class);
        Root root = query.from(Recruitment.class);
        query = query.select(root);

        if (pos != null) {
            Predicate p = builder.equal(root.get("position").as(String.class),pos);

            query = query.where(p);
        }

        Query q = session.createQuery(query);

        return q.getResultList();  
    }

    @Override
    public List<Recruitment> getListRecruitmentBySalary(int a, int b) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Recruitment> query = builder.createQuery(Recruitment.class);
        Root root = query.from(Recruitment.class);
        query = query.select(root);
        Predicate p;
        
        if (b == 0 && a == 0) 
            p = builder.equal(root.get("salary").as(BigDecimal.class),0);
        else
            p = builder.between(root.get("salary").as(BigDecimal.class), a, b);
        
        query = query.where(p);
        Query q = session.createQuery(query);

        return q.getResultList();   
    }

    @Override
    public List<Recruitment> getListRecruitmentByNow(int a) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Recruitment> query = builder.createQuery(Recruitment.class);
        Root root = query.from(Recruitment.class);
        query = query.select(root);
        
        Predicate p = builder.equal(root.get("now"),a);
        
        query = query.where(p);
        Query q = session.createQuery(query);

        return q.getResultList();    
    }

}
