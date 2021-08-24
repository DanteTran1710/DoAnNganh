/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.pojo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author hp
 */
@Entity
@Table(name = "user")
public class User implements Serializable{
    private static final String admin = "ROLE_ADMIN";
    private static final String user = "ROLE_USER";
    
    @Id
    private String idUser;
    private String email;
    private String password;
    private String firstName;
    private String lastName;
    private String userRole;
    private String userName;

    public User() {
    }

    public User(String idUser, String email, String password, String firstName, String lastName, String userRole, String userName) {
        this.idUser = idUser;
        this.email = email;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.userRole = userRole;
        this.userName = userName;
    }

    /**
     * @return the idUser
     */
    public String getIdUser() {
        return idUser;
    }

    /**
     * @param idUser the idUser to set
     */
    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * @return the userRole
     */
    public String getUserRole() {
        return userRole;
    }

    /**
     * @param userRole the userRole to set
     */
    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }

    /**
     * @return the userName
     */
    public String getUserName() {
        return userName;
    }

    /**
     * @param userName the userName to set
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }
    
    
}
