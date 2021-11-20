/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.service.impl;

import com.findingcareer.pojo.CVsForRecruitments;
import com.findingcareer.pojo.Employer;
import com.findingcareer.pojo.Recruitment;
import com.findingcareer.pojo.User;
import com.findingcareer.repository.CVsForRecruitmentsRepository;
import com.findingcareer.repository.RecruitmentRepository;
import com.findingcareer.repository.UserRepository;
import com.findingcareer.service.CVsForRecruitmentsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

/**
 *
 * @author hp
 */
@Service
public class CVsForRecruitmentsServiceImpl implements CVsForRecruitmentsService{

    @Autowired
    private CVsForRecruitmentsRepository cVsForRecruitmentsRepository;
    @Autowired
    private RecruitmentRepository recruitmentRepository; 
    @Autowired
    private UserRepository userRepository;
    
    @Override
    public boolean addCV(int idRe) {
                //GET USER BY USER NAME
        User u = this.userRepository.getUserByUsername(
                SecurityContextHolder.getContext().getAuthentication().getName());
        
        CVsForRecruitments cv = new CVsForRecruitments(); 
        
        Recruitment r = this.recruitmentRepository.getRecruitmentById(idRe);
        
        cv.setRecruitment(r);
        
        cv.setEmployer(r.getEmployer());
        cv.setState("received");
        cv.setEmployee(u.getEmployee());
        cv.setCv(u.getEmployee().getCv());
        
        return this.cVsForRecruitmentsRepository.addCV(cv);
    }

    @Override
    public boolean updateState(CVsForRecruitments cv) {
        return this.cVsForRecruitmentsRepository.updateState(cv);
    }

    @Override
    public List<Object> getListCVByEmployer(int idEmployer, int page) {
        return this.cVsForRecruitmentsRepository.getListCVByEmployer(idEmployer, page);
    }

    @Override
    public long countCvsByEmployer(Employer employer) {
        return this.cVsForRecruitmentsRepository.countCvsByEmployer(employer);
    }

    @Override
    public CVsForRecruitments getCVById(int i) {
        return this.cVsForRecruitmentsRepository.getCVById(i);
    }
    
}
