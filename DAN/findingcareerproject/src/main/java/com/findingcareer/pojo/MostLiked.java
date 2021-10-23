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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author hp
 */
@Entity
@Table(name = "most_liked")
public class MostLiked implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int heart;
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

    public MostLiked() {
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
     * @return the heart
     */
    public int getHeart() {
        return heart;
    }

    /**
     * @param heart the heart to set
     */
    public void setHeart(int heart) {
        this.heart = heart;
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

}
