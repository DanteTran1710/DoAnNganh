/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.pojo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;

/**
 *
 * @author hp
 */
@Entity
@Table(name = "employee")
public class Employee implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idEmployee;
    private String avatarUrl;
    private String cv;
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idUser")
    private User user;
    private String phoneNumber;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date dob;
    private boolean sex;
    private String nationality;
    private String address;

    public Employee() {
    }

    public Employee(int idEmployee, String avatarUrl, String cv, User user) {
        this.idEmployee = idEmployee;
        this.avatarUrl = avatarUrl;
        this.cv = cv;
        this.user = user;
    }

    
    /**
     * @return the idEmployee
     */
    public int getIdEmployee() {
        return idEmployee;
    }

    /**
     * @param idEmployee the idEmployee to set
     */
    public void setIdEmployee(int idEmployee) {
        this.idEmployee = idEmployee;
    }

    /**
     * @return the avatarUrl
     */
    public String getAvatarUrl() {
        return avatarUrl;
    }

    /**
     * @param avatarUrl the avatarUrl to set
     */
    public void setAvatarUrl(String avatarUrl) {
        this.avatarUrl = avatarUrl;
    }

    /**
     * @return the cv
     */
    public String getCvUrl() {
        return cv;
    }

    /**
     * @param cv the cv to set
     */
    public void setCvUrl(String cv) {
        this.cv = cv;
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
     * @return the dob
     */
    public Date getDob() {
        return dob;
    }

    /**
     * @param dob the dob to set
     */
    public void setDob(Date dob) {
        this.dob = dob;
    }

    /**
     * @return the sex
     */
    public boolean isSex() {
        return sex;
    }

    /**
     * @param sex the sex to set
     */
    public void setSex(boolean sex) {
        this.sex = sex;
    }

    /**
     * @return the nationality
     */
    public String getNationality() {
        return nationality;
    }

    /**
     * @param nationality the nationality to set
     */
    public void setNationality(String nationality) {
        this.nationality = nationality;
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
}
