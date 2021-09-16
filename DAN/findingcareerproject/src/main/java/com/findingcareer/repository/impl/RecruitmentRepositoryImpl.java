/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.repository.impl;

import com.findingcareer.pojo.Recruitment;
import com.findingcareer.repository.RecruitmentRepository;
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
public class RecruitmentRepositoryImpl implements RecruitmentRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactoryBean;
    @Override
    public List<Recruitment> getListRecruitment(String kw, int page) {
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
         
        Query q =  session.createQuery(query);
        
        // Get amount of recruitment by requirement
        int maxpage = 3;
        q.setMaxResults(maxpage);
        q.setFirstResult((page - 1)*maxpage);
        
        return q.getResultList();
    }

    @Override
    public long countRecruitment() {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        Query q = session.createQuery("Select Count(*) From Recruitment");
        
        return Long.parseLong(q.getSingleResult().toString());
    }
    
}
