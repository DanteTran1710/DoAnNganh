/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.pojo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author hp
 */
@Entity
@Table(name = "rating_company")
public class RatingCompany  implements Serializable{
    @Id
    private int idRating;
    private int star;
    @ManyToOne(      
            optional = true,
            fetch = FetchType.EAGER)
    @JoinColumn(name = "idEmployee")
    private Employee employee;
    @ManyToOne(      
            optional = true,
            fetch = FetchType.EAGER)
    @JoinColumn(name = "idCompany")
    private Employer employer;

    public RatingCompany() {
    }

    public RatingCompany(int idRating, int star, Employee employee, Employer employer) {
        this.idRating = idRating;
        this.star = star;
        this.employee = employee;
        this.employer = employer;
    }

    /**
     * @return the idRating
     */
    public int getIdRating() {
        return idRating;
    }

    /**
     * @param idRating the idRating to set
     */
    public void setIdRating(int idRating) {
        this.idRating = idRating;
    }

    /**
     * @return the star
     */
    public int getStar() {
        return star;
    }

    /**
     * @param star the star to set
     */
    public void setStar(int star) {
        this.star = star;
    }

    /**
     * @return the employee
     */
    public Employee getEmployee() {
        return employee;
    }

    /**
     * @param employee the employee to set
     */
    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    /**
     * @return the employer
     */
    public Employer getEmployer() {
        return employer;
    }

    /**
     * @param employer the employer to set
     */
    public void setEmployer(Employer employer) {
        this.employer = employer;
    }
}
