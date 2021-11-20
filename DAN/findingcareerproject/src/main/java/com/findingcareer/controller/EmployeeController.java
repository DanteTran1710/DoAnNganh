/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import com.findingcareer.pojo.Employee;
import com.findingcareer.pojo.User;
import com.findingcareer.service.EmployeeService;
import com.findingcareer.service.EmployerService;
import com.findingcareer.service.UserService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.findingcareer.pojo.Employer;
import com.findingcareer.service.CommentService;
import com.findingcareer.service.MostLikedCompanyService;
import com.findingcareer.service.RatingService;
import com.findingcareer.service.RecruitmentService;

/**
 *
 * @author hp
 */
@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;
    @Autowired
    private UserService userService;
    @Autowired
    private EmployerService employerService;
    @Autowired
    private CommentService commentService;
    @Autowired
    private RecruitmentService recruitmentService;
    @Autowired
    private RatingService ratingService;
    @Autowired
    private MostLikedCompanyService mostLikedService;

    @GetMapping("/user/add-employee")
    public String addEmployeeView(Model model) {
        model.addAttribute("employee", new Employee());

        return "addEmployee";
    }

    @PostMapping("/user/add-employee")
    public String addEmployee(Model model,
            @ModelAttribute(value = "employee") Employee employee) {
        String errorMessage;

        // ADD NEW EMPLOYER
        if (this.employeeService.addEmployee(employee) == true) {
            return "redirect:/login";
        } else {
            errorMessage = "Hệ thống hiện đang lỗi! Vui lòng thử lại sau";
        }

        model.addAttribute("errorMessage", errorMessage);

        return "addEmployee";
    }

    @GetMapping("/employee/employee-profile")
    public String editProfileEmployeeView(Model model) {

        User u = this.userService.getUserByUsername(
                SecurityContextHolder.getContext().getAuthentication().getName());

        model.addAttribute("employee",
                this.employeeService.getEmployeeById(u.getEmployee().getIdEmployee()));

        return "employeeProfile";
    }

    @PostMapping("/employee/employee-profile")
    public String editProfileEmployee(Model model,
            @ModelAttribute(value = "employee") Employee e) {

        String message;

        if (this.employeeService.updateEmployee(e)) {
            message = "Cập nhật dữ liệu thành công!";
        } else {
            message = "Cập nhật dữ liệu thất bại";
        }
        model.addAttribute("message", message);

        return "employeeProfile";
    }

    @GetMapping("/employee/find-employers")
    public String listEmployer(Model model,
            @RequestParam(required = false) Map<String, String> params) {
        String kw = params.getOrDefault("kw", null);
        String page = params.getOrDefault("page", "1");
        
        // KEYWORDS CONDITIONS AND NO CONDITIONS
        model.addAttribute("employer",
                this.employerService.getListEmployerByName(kw, Integer.parseInt(page)));
        model.addAttribute("counter",
                this.employerService.countEmployer());
        
        return "listEmployers";
    }

    @GetMapping("/employee/employer-details/{employerId}")
    public String employerDetails(Model model,
            @PathVariable(value = "employerId") int id,
            @RequestParam(required = false) Map<String, String> params) {

        int page = Integer.parseInt(params.getOrDefault("page", "1"));

        Employer e = this.employerService.getEmployerById(id);

        User u = this.userService.getUserByUsername(
                SecurityContextHolder.getContext().getAuthentication().getName());

        model.addAttribute("e", e);
        model.addAttribute("jobs",
                this.recruitmentService.getAmountRecruitmentByCompany(id, 0));
        model.addAttribute("comments",
                this.commentService.getCommentsByCompanyid(id, page));
        model.addAttribute("counter", e.getListComment().size());
        model.addAttribute("avgrate", this.ratingService.getAverageRatingCompany(id));
        model.addAttribute("rate",
                this.ratingService.getRatingByEmployee(u.getEmployee().getIdEmployee(), id));
        model.addAttribute("likebyE", this.mostLikedService.getLikeByEmployeeId(
                u.getEmployee().getIdEmployee(), e.getIdEmployer()));
        
        return "employerDetails";
    }

}
