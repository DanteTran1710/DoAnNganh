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
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author hp
 */
@Entity
@Table(name = "hastag")
public class Hastag implements Serializable{
    @Id
    private int idHastag;
    private String hastagName;
    @ManyToOne(
            optional = true,
            fetch = FetchType.EAGER
    )
    @JoinColumn(name = "idCategory")
    private CategoryJob categoryJob;

    /**
     * @return the idHastag
     */
    public int getIdHastag() {
        return idHastag;
    }

    /**
     * @param idHastag the idHastag to set
     */
    public void setIdHastag(int idHastag) {
        this.idHastag = idHastag;
    }

    /**
     * @return the hastagName
     */
    public String getHastagName() {
        return hastagName;
    }

    /**
     * @param hastagName the hastagName to set
     */
    public void setHastagName(String hastagName) {
        this.hastagName = hastagName;
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
}
