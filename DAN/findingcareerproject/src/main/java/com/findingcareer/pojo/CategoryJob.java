/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.pojo;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author hp
 */
@Entity
@Table(name = "category_job")
public class CategoryJob implements Serializable{
    @Id
    private int idCategory;
    private String nameJob; 
    private String description;
    private String hastag;
    @OneToMany(mappedBy = "categoryJob", fetch = FetchType.EAGER)
    private Set<Recruitment> listRecruitment;
    

    public CategoryJob() {
    }

    public CategoryJob(int idCategory, String nameJob, String description, String hastag) {
        this.idCategory = idCategory;
        this.nameJob = nameJob;
        this.description = description;
        this.hastag = hastag;
    }
    
    /**
     * @return the idCategory
     */
    public int getIdCategory() {
        return idCategory;
    }

    /**
     * @param idCategory the idCategory to set
     */
    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    /**
     * @return the nameJob
     */
    public String getNameJob() {
        return nameJob;
    }

    /**
     * @param nameJob the nameJob to set
     */
    public void setNameJob(String nameJob) {
        this.nameJob = nameJob;
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
     * @return the listRecruitment
     */
    public Set<Recruitment> getListRecruitment() {
        return listRecruitment;
    }

    /**
     * @param listRecruitment the listRecruitment to set
     */
    public void setListRecruitment(Set<Recruitment> listRecruitment) {
        this.listRecruitment = listRecruitment;
    }

    /**
     * @return the recruitment
     */
}
