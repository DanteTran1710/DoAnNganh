/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import com.findingcareer.pojo.CategoryJob;
import Utils.Utils;
import com.findingcareer.service.RecruitmentService;
import com.findingcareer.service.CategoryService;
import java.util.Collections;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author hp
 */
@Controller
public class RecruitmentController {
    @Autowired
    private RecruitmentService recruitmentService;
    @Autowired
    private CategoryService categoryService;

    @GetMapping("/jobs")
    public String listJob(Model model,
            @RequestParam(required = false) Map<String, String> params) {
        String kw = params.getOrDefault("kw", null);
        String page = params.getOrDefault("page", "1");
        String position = params.getOrDefault("position", null);
        String salary = params.get("salary");
        String idCate = params.get("idCat");
        String now = params.get("now");
        
        if(now != null){
            model.addAttribute("recruitment",
                    Utils.pagination(this.recruitmentService.
                            getListRecruitmentByNow(Integer.parseInt(now)), page,3));
            model.addAttribute("now",now);
        }
        else if(salary != null){
            String[] l = salary.split("-");
            
            model.addAttribute("recruitment",
                    Utils.pagination(this.recruitmentService.getListRecruitmentBySalary(
                            Integer.parseInt(l[0]),Integer.parseInt(l[1])), page,3));
        }   
        else if (position != null) {
            // POSITION CONDITIONS
            model.addAttribute("recruitment",
                    Utils.pagination(this.recruitmentService.getListRecruitmentByFilter(position), page,3));
            model.addAttribute("position", position);
        } else if (idCate != null && position == null) {
            // CATEGORY CONDITIONS
            CategoryJob c = this.categoryService.getCategoryById(Integer.parseInt(idCate));
            model.addAttribute("recruitment", Utils.pagination(c.getListRecruitment(), page,3));
            model.addAttribute("idCate", idCate);

        } else{
            // KEYWORDS CONDITIONS AND NO CONDITIONS
            model.addAttribute("recruitment",
                    Utils.pagination(this.recruitmentService.getListRecruitment(kw), page,3));
            model.addAttribute("keyword", kw);
        }

        model.addAttribute("category", this.categoryService.getListCategory());
        return "job";
    }

}
