/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.service.impl;

import com.findingcareer.pojo.CategoryJob;
import com.findingcareer.repository.CategoryRepository;
import com.findingcareer.service.CategoryService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author hp
 */
@Service
public class CategoryServiceImpl implements CategoryService{

    @Autowired
    private CategoryRepository categoryRepository;
    
    @Override
    public List<CategoryJob> getListCategory() {
        return this.categoryRepository.getListCategory();
    }

    @Override
    public CategoryJob getCategoryById(int id) {
        return this.categoryRepository.getCategoryById(id);
    }
    
}
