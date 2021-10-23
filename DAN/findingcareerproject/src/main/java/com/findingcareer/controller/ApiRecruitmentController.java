/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.controller;

import com.findingcareer.pojo.Recruitment;
import com.findingcareer.service.RecruitmentService;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author hp
 */
@RestController
public class ApiRecruitmentController {

    @Autowired
    private RecruitmentService recruitmentService;

    @DeleteMapping("/api/delete-recruitment/{id}")
    public void deleteRecruitmentByEmployer(@PathVariable(value = "id") int reId, HttpSession session) {
        String msg;
        if (this.recruitmentService.deleteRecruitment(reId)) {
            msg = "Delete recruitment successful!";
        } else {
            msg = "Delete recruitment unsuccessful!";
        }

        session.setAttribute("msg", msg);
    }

    @PostMapping("/api/get-amount-res")
    public ResponseEntity<List<Recruitment>> getAmountRecruitmentsByCompany(
            @RequestBody Map<String, String> params) {
        try {
            int exist = Integer.parseInt(params.get("amount"));
            int id = Integer.parseInt(params.get("id"));
            
            List<Recruitment> list = this.recruitmentService.getAmountRecruitmentByCompany(id, exist);

            return ResponseEntity.ok(list);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }
}
