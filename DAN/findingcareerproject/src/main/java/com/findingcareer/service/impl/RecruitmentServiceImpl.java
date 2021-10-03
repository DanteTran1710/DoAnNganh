/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.service.impl;

import com.findingcareer.pojo.CategoryJob;
import com.findingcareer.pojo.Recruitment;
import com.findingcareer.pojo.User;
import com.findingcareer.repository.CategoryRepository;
import com.findingcareer.repository.RecruitmentRepository;
import com.findingcareer.repository.UserRepository;
import com.findingcareer.service.RecruitmentService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

/**
 *
 * @author hp
 */
@Service
public class RecruitmentServiceImpl implements RecruitmentService {

    @Autowired
    private RecruitmentRepository recruitmentRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public List<Recruitment> getListRecruitment(String kw) {
        return this.recruitmentRepository.getListRecruitment(kw);
    }

    @Override
    public Recruitment getRecruitmentById(int id) {
        return this.recruitmentRepository.getRecruitmentById(id);
    }

    @Override
    public List<Recruitment> getListRecruitmentByFilter(String kw) {
        return this.recruitmentRepository.getListRecruitmentByFilter(kw);
    }

    @Override
    public List<Recruitment> getListRecruitmentBySalary(int i, int i1) {
        return this.recruitmentRepository.getListRecruitmentBySalary(i, i1);
    }

    @Override
    public List<Recruitment> getListRecruitmentByNow(int a) {
        return this.recruitmentRepository.getListRecruitmentByNow(a);
    }

    @Override
    public boolean updateRecruitment(Recruitment r) {
        CategoryJob c = this.categoryRepository.
                getCategoryById(r.getCategoryJob().getIdCategory());
        
        r.setCategoryJob(c);
        
        User u = this.userRepository.getUserByUsername(
                SecurityContextHolder.getContext().getAuthentication().getName());

        r.setEmployer(u.getEmployer());
        
        return this.recruitmentRepository.updateRecruitment(r);
    }

    @Override
    public boolean addRecruitment(Recruitment r) {
        CategoryJob c = this.categoryRepository.
                getCategoryById(r.getCategoryJob().getIdCategory());
        
        r.setCategoryJob(c);
        
        User u = this.userRepository.getUserByUsername(
                SecurityContextHolder.getContext().getAuthentication().getName());

        r.setEmployer(u.getEmployer());
        
        return this.recruitmentRepository.addRecruitment(r);
    }
}
