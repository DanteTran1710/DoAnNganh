/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import com.findingcareer.pojo.Employer;
import com.findingcareer.pojo.User;
import com.findingcareer.service.EmployerService;
import com.findingcareer.service.UserService;
import java.util.Map;
import Utils.Utils;
import com.findingcareer.pojo.Recruitment;
import com.findingcareer.service.CategoryService;
import com.findingcareer.service.EmployeeService;
import com.findingcareer.service.RecruitmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author hp
 */
@Controller
public class EmployerController {

    @Autowired
    private RecruitmentService recruitmentService;
    @Autowired
    private EmployerService employerService;
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private UserService userService;
    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/user/add-employer")
    public String addEmployerView(Model model) {
        model.addAttribute("employer", new Employer());

        return "addEmployer";
    }

    @PostMapping("/user/add-employer")
    public String addEmployer(Model model,
            @ModelAttribute(value = "employer") Employer employer) {
        String errorMessage;

        // ADD NEW EMPLOYER
        if (this.employerService.addEmployer(employer) == true) {
            return "redirect:/login";
        } else {
            errorMessage = "Hệ thống hiện đang lỗi! Vui lòng thử lại sau";
        }

        model.addAttribute("errorMessage", errorMessage);

        return "addEmployer";
    }

    @GetMapping("/employer/employer-profile")
    public String profileEmployerView(Model model) {

        User u = this.userService.getUserByUsername(
                SecurityContextHolder.getContext().getAuthentication().getName());

        model.addAttribute("employer",
                this.employerService.getEmployerById(u.getEmployer().getIdEmployer()));

        return "employerProfile";
    }

    @PostMapping("/employer/employer-profile")
    public String profileEmployer(Model model,
            @ModelAttribute(value = "employer") Employer e) {
        String message;

        if (this.employerService.updateEmployer(e) == true) {

            message = "Cập nhật dữ liệu thành công";
        } else {
            message = "Hệ thống hiện đang lỗi! Vui lòng thử lại sau";
        }

        model.addAttribute("message", message);

        return "employerProfile";
    }

    @GetMapping("/employer/manage")
    public String recruitmentByCompany(Model model, @RequestParam Map<String, String> params) {
        String message;
        String page = params.getOrDefault("page", "1");
        String idRe = params.getOrDefault("idRe", null);

        if (idRe != null) {
            Recruitment r = this.recruitmentService.getRecruitmentById(Integer.parseInt(idRe));

            if (this.recruitmentService.deleteRecruitment(r) == true) {
                message = "Delete recruitment successful!";
            } else {
                message = "Delete recruitment unsuccessful!";
            }

            model.addAttribute("message", message);
        }
        User u = this.userService.getUserByUsername(
                SecurityContextHolder.getContext().getAuthentication().getName());

        Employer e = this.employerService.getEmployerById(u.getEmployer().getIdEmployer());

        model.addAttribute("recruitments", Utils.pagination(e.getListRecruiment(), page, 2));

        return "manageRecruitment";
    }

    @GetMapping("/recruitment/{recruitmentId}")
    public String recruitment(Model model,
            @PathVariable(value = "recruitmentId") int recruitmentId) {

        Recruitment r = this.recruitmentService.getRecruitmentById(recruitmentId);

        model.addAttribute("re", r);
        model.addAttribute("co",
                this.employerService.getEmployerById(r.getEmployer().getIdEmployer()));

        return "recruitment";
    }

    @GetMapping("/employer/recruitment/update/{recruitmentId}")
    public String recruitmentByCompany(Model model,
            @PathVariable(value = "recruitmentId") int recruitmentId) {

        Recruitment r = this.recruitmentService.getRecruitmentById(recruitmentId);

        model.addAttribute("r", r);
        model.addAttribute("cate", this.categoryService.getListCategory());

        return "updateRecruitment";
    }

    @PostMapping("/employer/recruitment/update/{recruitmentId}")
    public String updateRecruitmentByCompany(Model model,
            @ModelAttribute(value = "r") Recruitment recruitment,
            @PathVariable(value = "recruitmentId") int recruitmentId) {
        String message;

        recruitment.setIdRecruitment(recruitmentId);

        if (this.recruitmentService.updateRecruitment(recruitment) == true) {
            message = "Cập nhật dữ liệu thành công";
        } else {
            message = "Cập nhật dữ liệu thất bại";
        }

        model.addAttribute("message", message);

        return "updateRecruitment";
    }

    @GetMapping("/employer/recruitment/new")
    public String newRecruitmentByCompany(Model model) {

        model.addAttribute("r", new Recruitment());
        model.addAttribute("cate", this.categoryService.getListCategory());

        return "addRecruitment";
    }

    @PostMapping("/employer/recruitment/new")
    public String addNewRecruitmentByCompany(Model model,
            @ModelAttribute(value = "r") Recruitment recruitment) {
        String message;

        if (this.recruitmentService.addRecruitment(recruitment) == true) {
            message = "Cập nhật dữ liệu thành công";
        } else {
            message = "Cập nhật dữ liệu thất bại";
        }

        model.addAttribute("message", message);

        return "addRecruitment";
    }

    @GetMapping("/employer/find-employees")
    public String listEmployees(Model model,
            @RequestParam(required = false) Map<String, String> params) {
        String kw = params.getOrDefault("kw", null);
        String page = params.getOrDefault("page", "1");

            model.addAttribute("employees",
                    this.employeeService.getListEmployee(kw, Integer.parseInt(page)));
            model.addAttribute("counter", this.employeeService.countEmployee());
            
        return "listEmployees";
    }

}
