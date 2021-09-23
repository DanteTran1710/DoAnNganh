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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author hp
 */
@Entity
@Table(name = "employer")
public class Employer implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idEmployer;
    private String phoneNumber;
    private String companyName;
    private String orientation;
    private String address;
    private String description;
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idUser")
    private User user;
    @OneToMany(mappedBy = "employer")
    private Set<Recruitment> listRecruiment;
    private String logo;
    private String companyImgs;
    private boolean active;

    public Employer() {
    }

    public Employer(int idEmployer, String phoneNumber, String companyName, String orientation, String address, String description, User user) {
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
    public int getIdEmployer() {
        return idEmployer;
    }

    /**
     * @param idEmployer the idEmployer to set
     */
    public void setIdEmployer(int idEmployer) {
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

    /**
     * @return the listRecruiment
     */
    public Set<Recruitment> getListRecruiment() {
        return listRecruiment;
    }

    /**
     * @param listRecruiment the listRecruiment to set
     */
    public void setListRecruiment(Set<Recruitment> listRecruiment) {
        this.listRecruiment = listRecruiment;
    }

    /**
     * @return the logo
     */
    public String getLogo() {
        return logo;
    }

    /**
     * @param logo the logo to set
     */
    public void setLogo(String logo) {
        this.logo = logo;
    }

    /**
     * @return the companyImgs
     */
    public String getCompanyImgs() {
        return companyImgs;
    }

    /**
     * @param companyImgs the companyImgs to set
     */
    public void setCompanyImgs(String companyImgs) {
        this.companyImgs = companyImgs;
    }

    /**
     * @return the active
     */
    public boolean isActive() {
        return active;
    }

    /**
     * @param active the active to set
     */
    public void setActive(boolean active) {
        this.active = active;
    }

}
