/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.repository;

import com.findingcareer.pojo.Recruitment;
import java.util.List;

/**
 *
 * @author hp
 */
public interface RecruitmentRepository {
    List<Recruitment> getListRecruitment(String kw);
    List<Recruitment> getListRecruitmentByFilter(String kw);
    List<Recruitment> getListRecruitmentBySalary(int a, int b);
    List<Recruitment> getListRecruitmentByNow(int a);
    Recruitment getRecruitmentById(int id);
    boolean updateRecruitment(Recruitment r);
    boolean addRecruitment(Recruitment r);
    boolean deleteRecruitment(Recruitment r);
}
