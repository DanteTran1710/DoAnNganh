/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author hp
 */
@Entity
@Table(name = "cv_for_recruitment")
public class CVsForRecruitments implements Serializable{
    @Id
    private int id;
    private String cv;
    private String state;
    @ManyToOne(
            optional = true,
            fetch = FetchType.EAGER
    )
    @JoinColumn(name = "idCompany")
    @JsonIgnore
    private Employer employer;
    @ManyToOne(
            optional = true,
            fetch = FetchType.EAGER
    )
    @JoinColumn(name = "idEmployee")
    @JsonIgnore
    private Employee employee;
    @ManyToOne(
            optional = true,
            fetch = FetchType.EAGER
    )
    @JoinColumn(name = "idRecruitment")
    @JsonIgnore
    private Recruitment recruitment;

    public CVsForRecruitments() {
    }

    public CVsForRecruitments(int id, String cv, String state, Employer employer, Employee employee, Recruitment recruitment) {
        this.id = id;
        this.cv = cv;
        this.state = state;
        this.employer = employer;
        this.employee = employee;
        this.recruitment = recruitment;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the cv
     */
    public String getCv() {
        return cv;
    }

    /**
     * @param cv the cv to set
     */
    public void setCv(String cv) {
        this.cv = cv;
    }

    /**
     * @return the employer
     */
    public Employer getEmployer() {
        return employer;
    }

    /**
     * @param employer the employer to set
     */
    public void setEmployer(Employer employer) {
        this.employer = employer;
    }

    /**
     * @return the employee
     */
    public Employee getEmployee() {
        return employee;
    }

    /**
     * @param employee the employee to set
     */
    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    /**
     * @return the recruitment
     */
    public Recruitment getRecruitment() {
        return recruitment;
    }

    /**
     * @param recruitment the recruitment to set
     */
    public void setRecruitment(Recruitment recruitment) {
        this.recruitment = recruitment;
    }

    /**
     * @return the state
     */
    public String getState() {
        return state;
    }

    /**
     * @param state the state to set
     */
    public void setState(String state) {
        this.state = state;
    }
}
