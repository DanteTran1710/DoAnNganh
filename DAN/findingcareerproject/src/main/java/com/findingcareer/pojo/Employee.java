/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template fileAva, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.Transient;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

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
    @JsonIgnore
    private User user;
    private String phoneNumber;
    @Temporal(javax.persistence.TemporalType.DATE)
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date dob;
    private boolean sex;
    private String nationality;
    private String address;
    @Transient
    private MultipartFile fileAva;
    @Transient
    private MultipartFile fileCV;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    private String position;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    private String company;
    @Basic(optional = false)
    @NotNull
    private boolean currentjob;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    private String subject;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    private String school;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    private String qualification;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    private String skill;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    private String language;
    @Basic(optional = false)
    @NotNull
    private BigDecimal salaryOffer;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    private String positionOffer;
    @OneToMany(mappedBy = "employee", fetch = FetchType.LAZY)
    @Fetch(value = FetchMode.SUBSELECT)
    @JsonIgnore
    private List<Comment> listComment;
    @OneToMany(mappedBy = "employee", fetch = FetchType.LAZY)
    @Fetch(value = FetchMode.SUBSELECT)
    @JsonIgnore
    private List<Rating> listRatings;
    @OneToMany(mappedBy = "employee", fetch = FetchType.LAZY)
    @Fetch(value = FetchMode.SUBSELECT)
    @JsonIgnore
    private List<CVsForRecruitments> cVsForRecruitmentses;

    public Employee() {
    }

    public Employee(int idEmployee, String avatarUrl, String cv, User user, String phoneNumber, Date dob, boolean sex, String nationality, String address, MultipartFile fileAva, MultipartFile fileCV, String position, String company, boolean currentjob, String subject, String school, String qualification, String skill, String language, BigDecimal salaryOffer, String positionOffer, List<Comment> listComment, List<Rating> listRatings) {
        this.idEmployee = idEmployee;
        this.avatarUrl = avatarUrl;
        this.cv = cv;
        this.user = user;
        this.phoneNumber = phoneNumber;
        this.dob = dob;
        this.sex = sex;
        this.nationality = nationality;
        this.address = address;
        this.fileAva = fileAva;
        this.fileCV = fileCV;
        this.position = position;
        this.company = company;
        this.currentjob = currentjob;
        this.subject = subject;
        this.school = school;
        this.qualification = qualification;
        this.skill = skill;
        this.language = language;
        this.salaryOffer = salaryOffer;
        this.positionOffer = positionOffer;
        this.listComment = listComment;
        this.listRatings = listRatings;
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
    public String getCv() {
        return cv;
    }

    /**
     * @param cv the cv to set
     */
    public void setCv(String cv) {
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

    /**
     * @return the fileAva
     */
    public MultipartFile getFileAva() {
        return fileAva;
    }

    /**
     * @param fileAva the fileAva to set
     */
    public void setFileAva(MultipartFile fileAva) {
        this.fileAva = fileAva;
    }

    /**
     * @return the fileCV
     */
    public MultipartFile getFileCV() {
        return fileCV;
    }

    /**
     * @param fileCV the fileCV to set
     */
    public void setFileCV(MultipartFile fileCV) {
        this.fileCV = fileCV;
    }

    /**
     * @return the position
     */
    public String getPosition() {
        return position;
    }

    /**
     * @param position the position to set
     */
    public void setPosition(String position) {
        this.position = position;
    }

    /**
     * @return the company
     */
    public String getCompany() {
        return company;
    }

    /**
     * @param company the company to set
     */
    public void setCompany(String company) {
        this.company = company;
    }

    /**
     * @return the currentjob
     */
    public boolean isCurrentjob() {
        return currentjob;
    }

    /**
     * @param currentjob the currentjob to set
     */
    public void setCurrentjob(boolean currentjob) {
        this.currentjob = currentjob;
    }

    /**
     * @return the subject
     */
    public String getSubject() {
        return subject;
    }

    /**
     * @param subject the subject to set
     */
    public void setSubject(String subject) {
        this.subject = subject;
    }

    /**
     * @return the school
     */
    public String getSchool() {
        return school;
    }

    /**
     * @param school the school to set
     */
    public void setSchool(String school) {
        this.school = school;
    }

    /**
     * @return the qualification
     */
    public String getQualification() {
        return qualification;
    }

    /**
     * @param qualification the qualification to set
     */
    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    /**
     * @return the skill
     */
    public String getSkill() {
        return skill;
    }

    /**
     * @param skill the skill to set
     */
    public void setSkill(String skill) {
        this.skill = skill;
    }

    /**
     * @return the language
     */
    public String getLanguage() {
        return language;
    }

    /**
     * @param language the language to set
     */
    public void setLanguage(String language) {
        this.language = language;
    }

    /**
     * @return the salaryOffer
     */
    public BigDecimal getSalaryOffer() {
        return salaryOffer;
    }

    /**
     * @param salaryOffer the salaryOffer to set
     */
    public void setSalaryOffer(BigDecimal salaryOffer) {
        this.salaryOffer = salaryOffer;
    }

    /**
     * @return the positionOffer
     */
    public String getPositionOffer() {
        return positionOffer;
    }

    /**
     * @param positionOffer the positionOffer to set
     */
    public void setPositionOffer(String positionOffer) {
        this.positionOffer = positionOffer;
    }

    /**
     * @return the listComment
     */
    public List<Comment> getListComment() {
        return listComment;
    }

    /**
     * @param listComment the listComment to set
     */
    public void setListComment(List<Comment> listComment) {
        this.listComment = listComment;
    }

    /**
     * @return the listRatings
     */
    public List<Rating> getListRatings() {
        return listRatings;
    }

    /**
     * @param listRatings the listRatings to set
     */
    public void setListRatings(List<Rating> listRatings) {
        this.listRatings = listRatings;
    }

    /**
     * @return the cVsForRecruitmentses
     */
    public List<CVsForRecruitments> getcVsForRecruitmentses() {
        return cVsForRecruitmentses;
    }

    /**
     * @param cVsForRecruitmentses the cVsForRecruitmentses to set
     */
    public void setcVsForRecruitmentses(List<CVsForRecruitments> cVsForRecruitmentses) {
        this.cVsForRecruitmentses = cVsForRecruitmentses;
    }

}
