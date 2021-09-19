/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.repository;

import com.findingcareer.pojo.Employer;

/**
 *
 * @author hp
 */

public interface EmployerRepository {
    boolean addEmployer(Employer e);
    boolean updateEmployer(Employer e);
    Employer getEmployerById(int id);
}
