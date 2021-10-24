/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.service;

import com.findingcareer.pojo.MostLikedRecruitment;
import java.util.List;

/**
 *
 * @author hp
 */
public interface MostLikedRecruitmentService {
    boolean AddLike(int idRe);
    MostLikedRecruitment getLikeByEmployeeId(int idEmployee, int idRecruitment);
}
