/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.service;

import com.findingcareer.pojo.CategoryJob;
import java.util.List;

/**
 *
 * @author hp
 */
public interface CategoryService {
    List<CategoryJob> getListCategory();
    CategoryJob getCategoryById(int id);
}
