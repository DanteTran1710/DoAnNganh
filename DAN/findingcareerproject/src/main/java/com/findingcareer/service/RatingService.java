/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.service;

import com.findingcareer.pojo.Rating;

/**
 *
 * @author hp
 */
public interface RatingService {
    boolean addRating(int id, int star);
    Rating getRatingByEmployee(int idEmployee, int idEmployer);
    Object getAverageRatingCompany(int id);
}
