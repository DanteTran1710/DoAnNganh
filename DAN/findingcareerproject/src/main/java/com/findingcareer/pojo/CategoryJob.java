/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.pojo;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idCategory;
    private String nameJob;
    @OneToMany(mappedBy = "categoryJob",
            fetch = FetchType.EAGER,
            cascade =  CascadeType.REMOVE,
            orphanRemoval = true)
    private List<Recruitment> listRecruitment;

    public CategoryJob() {
    }

    public CategoryJob(int idCategory, String nameJob, String description) {
        this.idCategory = idCategory;
        this.nameJob = nameJob;
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
     * @return the listRecruitment
     */
    public List<Recruitment> getListRecruitment() {
        return listRecruitment;
    }

    /**
     * @param listRecruitment the listRecruitment to set
     */
    public void setListRecruitment(List<Recruitment> listRecruitment) {
        this.listRecruitment = listRecruitment;
    }
}
