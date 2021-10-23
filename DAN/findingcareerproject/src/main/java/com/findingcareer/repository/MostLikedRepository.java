/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.repository;

import com.findingcareer.pojo.MostLiked;

/**
 *
 * @author hp
 */
public interface MostLikedRepository {
    boolean AddLike(MostLiked like);
    MostLiked getLikeByEmployeeId(int idEmployee, int idRecruitment);
}
