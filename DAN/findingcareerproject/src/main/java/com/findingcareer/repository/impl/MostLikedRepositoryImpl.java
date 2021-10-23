/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.repository.impl;

import com.findingcareer.pojo.MostLiked;
import com.findingcareer.repository.MostLikedRepository;
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
public class MostLikedRepositoryImpl implements MostLikedRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public boolean AddLike(MostLiked like) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        try {
            session.save(like);

            return true;
        } catch (HibernateException ex) {
            System.err.println(ex.getMessage());
        }

        return false;
    }

    @Override
    public MostLiked getLikeByEmployeeId(int idEmployee, int idRecruitment) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<MostLiked> query = builder.createQuery(MostLiked.class);
        Root root = query.from(MostLiked.class);

        Predicate p1 = builder.equal(root.get("employee"), idEmployee);
        Predicate p2 = builder.equal(root.get("recruitment"), idRecruitment);

        query = query.where(builder.and(p1, p2));

        MostLiked m = session.createQuery(query).uniqueResult();

        return m;
    }

}
