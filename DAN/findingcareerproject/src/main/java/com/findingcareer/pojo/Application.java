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
@Table(name = "application")
public class Application implements Serializable{
    @Id
    private int id;
    private String idEmployee;
    private String idEmployer;

    public Application() {
    }

    public Application(int id, String idEmployee, String idEmployer) {
        this.id = id;
        this.idEmployee = idEmployee;
        this.idEmployer = idEmployer;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
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
    
}
