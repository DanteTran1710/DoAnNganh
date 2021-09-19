/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import com.findingcareer.pojo.CategoryJob;
import com.findingcareer.pojo.Recruitment;
import com.findingcareer.service.EmployerService;
import com.findingcareer.service.RecruitmentService;
import com.findingcareer.service.CategoryService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
    private EmployerService employerService;
    @Autowired
    private CategoryService categoryService;

    @GetMapping("/jobs")
    public String listJob(Model model,
            @RequestParam(required = false) Map<String, String> params) {
        String kw = params.getOrDefault("kw", null);
        int page = Integer.parseInt(params.getOrDefault("page", "1"));

        String idCate = params.get("idCat");
        if (idCate == null) {
            model.addAttribute("recruitment",
                    this.recruitmentService.getListRecruitment(kw, page));
            model.addAttribute("counter", this.recruitmentService.countRecruitment());
        } else {
            CategoryJob c = this.categoryService.getCategoryById(Integer.parseInt(idCate));
            model.addAttribute("recruitment", c.getListRecruitment());
            model.addAttribute("counter", c.getListRecruitment().size());
            
        }
        
        model.addAttribute("category", this.categoryService.getListCategory());

        return "job";
    }

    @GetMapping("/recruitment/{recruitmentId}")
    public String recruitmentDescription(Model model,
            @PathVariable(value = "recruitmentId") int recruitmentId) {

        Recruitment r = this.recruitmentService.getRecruitmentById(recruitmentId);

        model.addAttribute("re", r);
        model.addAttribute("co",
                this.employerService.getEmployerById(r.getEmployer().getIdEmployer()));

        return "recruitment";
    }
}
