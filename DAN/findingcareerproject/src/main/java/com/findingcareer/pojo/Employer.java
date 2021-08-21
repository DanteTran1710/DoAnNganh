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
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author hp
 */
@Entity
@Table(name = "employer")
public class Employer implements Serializable{
    @Id
    private String idEmployer;
    private String phoneNumber;
    private String companyName;
    private String orientation;
    private String address;
    private String description;
    @OneToOne
    @JoinColumn(name  = "idUser")
    private User user;

    public Employer() {
    }

    public Employer(String idEmployer, String phoneNumber, String companyName, String orientation, String address, String description, User user) {
        this.idEmployer = idEmployer;
        this.phoneNumber = phoneNumber;
        this.companyName = companyName;
        this.orientation = orientation;
        this.address = address;
        this.description = description;
        this.user = user;
    }

    /**
     * @return the idEmployer
     */
    public String getIdEmployer() {
        return idEmployer;
    }

    /**
     * @param idEmployer the idEmployer to set
     */
    public void setIdEmployer(String idEmployer) {
        this.idEmployer = idEmployer;
    }

    /**
     * @return the phoneNumber
     */
    public String getPhoneNumber() {
        return phoneNumber;
    }

    /**
     * @param phoneNumber the phoneNumber to set
     */
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    /**
     * @return the companyName
     */
    public String getCompanyName() {
        return companyName;
    }

    /**
     * @param companyName the companyName to set
     */
    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    /**
     * @return the orientation
     */
    public String getOrientation() {
        return orientation;
    }

    /**
     * @param orientation the orientation to set
     */
    public void setOrientation(String orientation) {
        this.orientation = orientation;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
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
     * @return the user
     */
    public User getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(User user) {
        this.user = user;
    }
    
    
    
    }