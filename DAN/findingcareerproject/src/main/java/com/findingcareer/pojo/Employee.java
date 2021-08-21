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
@Table(name = "employee")
public class Employee implements Serializable{
    @Id
    private String idEmployee;
    private String avatarUrl;
    private String cvUrl;
    @OneToOne
    @JoinColumn(name = "idUser")
    private User user;

    public Employee() {
    }

    public Employee(String idEmployee, String avatarUrl, String cvUrl, User user) {
        this.idEmployee = idEmployee;
        this.avatarUrl = avatarUrl;
        this.cvUrl = cvUrl;
        this.user = user;
    }

    /**
     * @return the idEmployee
     */
    public String getIdEmployee() {
        return idEmployee;
    }

    /**
     * @param idEmployee the idEmployee to set
     */
    public void setIdEmployee(String idEmployee) {
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
     * @return the cvUrl
     */
    public String getCvUrl() {
        return cvUrl;
    }

    /**
     * @param cvUrl the cvUrl to set
     */
    public void setCvUrl(String cvUrl) {
        this.cvUrl = cvUrl;
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
