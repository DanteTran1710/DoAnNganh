/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.pojo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author hp
 */
@Entity
@Table(name = "recruiment")
public class Recruitment implements Serializable{
    @Id
    private String idRecruitment;
    private String title;
    private String description;
    private String content;
    private String position;
    private String experience;
    private String salary;
    private String hastag;
    @ManyToOne
    @JoinColumn(name = "idCompany")
    private Employer idCompany;

    public Recruitment() {
    }

    public Recruitment(String idRecruitment, String title, String description, String content, String position, String experience, String salary, String hastag, Employer idCompany) {
        this.idRecruitment = idRecruitment;
        this.title = title;
        this.description = description;
        this.content = content;
        this.position = position;
        this.experience = experience;
        this.salary = salary;
        this.hastag = hastag;
        this.idCompany = idCompany;
    }

    /**
     * @return the idRecruitment
     */
    public String getIdRecruitment() {
        return idRecruitment;
    }

    /**
     * @param idRecruitment the idRecruitment to set
     */
    public void setIdRecruitment(String idRecruitment) {
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
     * @return the content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param content the content to set
     */
    public void setContent(String content) {
        this.content = content;
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
    public String getSalary() {
        return salary;
    }

    /**
     * @param salary the salary to set
     */
    public void setSalary(String salary) {
        this.salary = salary;
    }

    /**
     * @return the hastag
     */
    public String getHastag() {
        return hastag;
    }

    /**
     * @param hastag the hastag to set
     */
    public void setHastag(String hastag) {
        this.hastag = hastag;
    }

    /**
     * @return the idCompany
     */
    public Employer getIdCompany() {
        return idCompany;
    }

    /**
     * @param idCompany the idCompany to set
     */
    public void setIdCompany(Employer idCompany) {
        this.idCompany = idCompany;
    }

   
}
