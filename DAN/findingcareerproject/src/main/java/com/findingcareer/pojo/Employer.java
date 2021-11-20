/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.springframework.web.multipart.MultipartFile;

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
    @OneToMany(mappedBy = "employer", 
            fetch = FetchType.EAGER,
            cascade = CascadeType.ALL, 
            orphanRemoval = true)
    @Fetch(value = FetchMode.SUBSELECT)
    private List<Recruitment> listRecruiment;
    private String logo;
    private String companyImg;
    private boolean active;
    private String email;
    @OneToMany(mappedBy = "employer", 
            fetch = FetchType.EAGER,
            cascade = CascadeType.ALL, 
            orphanRemoval = true)
    @Fetch(value = FetchMode.SUBSELECT)
    private List<Comment> listComment;
    @OneToMany(mappedBy = "employer", 
            fetch = FetchType.EAGER,
            cascade = CascadeType.ALL, 
            orphanRemoval = true)
    @Fetch(value = FetchMode.SUBSELECT)
    private List<RatingCompany> listRatings;
    @OneToMany(mappedBy = "employer", fetch = FetchType.EAGER)
    @Fetch(value = FetchMode.SUBSELECT)
    @JsonIgnore
    private List<CVsForRecruitments> cVsForRecruitmentses;
    @OneToMany(mappedBy = "employer", fetch = FetchType.EAGER)
    @Fetch(value = FetchMode.SUBSELECT)
    @JsonIgnore
    private List<MostLikedCompany> mostLikeds;
    @Transient
    private MultipartFile filelogo;
    @Transient
    private MultipartFile fileComimg;

    public Employer() {
    }

    public Employer(int idEmployer, String phoneNumber, String companyName, String orientation, String address, String description, User user, List<Recruitment> listRecruiment, String logo, String companyImg, boolean active, String email, List<Comment> listComment, List<RatingCompany> listRatings, List<CVsForRecruitments> cVsForRecruitmentses, List<MostLikedCompany> mostLikeds) {
        this.idEmployer = idEmployer;
        this.phoneNumber = phoneNumber;
        this.companyName = companyName;
        this.orientation = orientation;
        this.address = address;
        this.description = description;
        this.user = user;
        this.listRecruiment = listRecruiment;
        this.logo = logo;
        this.companyImg = companyImg;
        this.active = active;
        this.email = email;
        this.listComment = listComment;
        this.listRatings = listRatings;
        this.cVsForRecruitmentses = cVsForRecruitmentses;
        this.mostLikeds = mostLikeds;
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
    public List<Recruitment> getListRecruiment() {
        return listRecruiment;
    }

    /**
     * @param listRecruiment the listRecruiment to set
     */
    public void setListRecruiment(List<Recruitment> listRecruiment) {
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
     * @return the companyImg
     */
    public String getCompanyImg() {
        return companyImg;
    }

    /**
     * @param companyImg the companyImg to set
     */
    public void setCompanyImg(String companyImg) {
        this.companyImg = companyImg;
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
    public List<RatingCompany> getListRatings() {
        return listRatings;
    }

    /**
     * @param listRatings the listRatings to set
     */
    public void setListRatings(List<RatingCompany> listRatings) {
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

    /**
     * @return the mostLikeds
     */
    public List<MostLikedCompany> getMostLikeds() {
        return mostLikeds;
    }

    /**
     * @param mostLikeds the mostLikeds to set
     */
    public void setMostLikeds(List<MostLikedCompany> mostLikeds) {
        this.mostLikeds = mostLikeds;
    }

    /**
     * @return the filelogo
     */
    public MultipartFile getFilelogo() {
        return filelogo;
    }

    /**
     * @param filelogo the filelogo to set
     */
    public void setFilelogo(MultipartFile filelogo) {
        this.filelogo = filelogo;
    }

    /**
     * @return the fileComimg
     */
    public MultipartFile getFileComimg() {
        return fileComimg;
    }

    /**
     * @param fileComimg the fileComimg to set
     */
    public void setFileComimg(MultipartFile fileComimg) {
        this.fileComimg = fileComimg;
    }
}