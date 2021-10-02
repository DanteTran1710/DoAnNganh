/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.CascadeType;
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
@Table(name = "recruitment")
public class Recruitment implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idRecruitment;
    private String title;
    private String welfare;
    private String description;
    private String requirement;
    private String position;
    private String experience;
    private BigDecimal salary;
    private boolean now;
    @ManyToOne(
            cascade = CascadeType.REMOVE,
            fetch = FetchType.EAGER,
            optional = true
    )
    @JoinColumn(name = "idCompany")
    private Employer employer;
    @ManyToOne(
            optional = true,
            cascade =  CascadeType.REMOVE,
            fetch = FetchType.EAGER
    )
    @JoinColumn(name = "idCategory")
    private CategoryJob categoryJob;

    public Recruitment() {
    }

    public Recruitment(int idRecruitment, String title, String description, String requirement, String position, String experience, BigDecimal salary, Employer employer, CategoryJob categoryJob) {
        this.idRecruitment = idRecruitment;
        this.title = title;
        this.description = description;
        this.requirement = requirement;
        this.position = position;
        this.experience = experience;
        this.salary = salary;
        this.employer = employer;
        this.categoryJob = categoryJob;
    }

    
    /**
     * @return the idRecruitment
     */
    public int getIdRecruitment() {
        return idRecruitment;
    }

    /**
     * @param idRecruitment the idRecruitment to set
     */
    public void setIdRecruitment(int idRecruitment) {
        this.idRecruitment = idRecruitment;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the requirement
     */
    public String getRequirement() {
        return requirement;
    }

    /**
     * @param requirement the requirement to set
     */
    public void setRequirement(String requirement) {
        this.requirement = requirement;
    }

    /**
     * @return the position
     */
    public String getPosition() {
        return position;
    }

    /**
     * @param position the position to set
     */
    public void setPosition(String position) {
        this.position = position;
    }

    /**
     * @return the experience
     */
    public String getExperience() {
        return experience;
    }

    /**
     * @param experience the experience to set
     */
    public void setExperience(String experience) {
        this.experience = experience;
    }

    /**
     * @return the salary
     */
    public BigDecimal getSalary() {
        return salary;
    }

    /**
     * @param salary the salary to set
     */
    public void setSalary(BigDecimal salary) {
        this.salary = salary;
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
     * @return the categoryJob
     */
    public CategoryJob getCategoryJob() {
        return categoryJob;
    }

    /**
     * @param categoryJob the categoryJob to set
     */
    public void setCategoryJob(CategoryJob categoryJob) {
        this.categoryJob = categoryJob;
    }

    /**
     * @return the welfare
     */
    public String getWelfare() {
        return welfare;
    }

    /**
     * @param welfare the welfare to set
     */
    public void setWelfare(String welfare) {
        this.welfare = welfare;
    }

    /**
     * @return the now
     */
    public boolean isNow() {
        return now;
    }

    /**
     * @param now the now to set
     */
    public void setNow(boolean now) {
        this.now = now;
    }

}
