/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.service.impl;

import com.findingcareer.pojo.Recruitment;
import com.findingcareer.repository.RecruitmentRepository;
import com.findingcareer.service.RecruitmentService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author hp
 */
@Service
public class RecruitmentServiceImpl implements RecruitmentService {

    @Autowired
    private RecruitmentRepository recruitmentRepository;

    @Override
    public List<Recruitment> getListRecruitment(String kw, int page) {
        return this.recruitmentRepository.getListRecruitment(kw, page);
    }

    @Override
    public long countRecruitment() {
        return this.recruitmentRepository.countRecruitment();
    }

}
