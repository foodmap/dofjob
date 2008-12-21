package com.dreamflyer.user;
// default package

import java.util.Date;


/**
 * SjtuStudent entity. @author MyEclipse Persistence Tools
 */

public class SjtuStudent  implements java.io.Serializable {


    // Fields    

     private String studentId;
     private String password;
     private Short sex;
     private String telephone;
     private Date birthday;
     private String birthplace;
     private String email;
     private String political;
     private String address;
     private String major;
     private String grade;
     private String college;
     private String nation;
     private String marriage;
     private String name;


    // Constructors

    /** default constructor */
    public SjtuStudent() {
    }

	/** minimal constructor */
    public SjtuStudent(String studentId, Short sex, Date birthday, String birthplace, String political, String address, String major, String grade, String college, String nation, String marriage) {
        this.studentId = studentId;
        this.sex = sex;
        this.birthday = birthday;
        this.birthplace = birthplace;
        this.political = political;
        this.address = address;
        this.major = major;
        this.grade = grade;
        this.college = college;
        this.nation = nation;
        this.marriage = marriage;
    }
    
    /** full constructor */
    public SjtuStudent(String studentId, String password, Short sex, String telephone, Date birthday, String birthplace, String email, String political, String address, String major, String grade, String college, String nation, String marriage, String name) {
        this.studentId = studentId;
        this.password = password;
        this.sex = sex;
        this.telephone = telephone;
        this.birthday = birthday;
        this.birthplace = birthplace;
        this.email = email;
        this.political = political;
        this.address = address;
        this.major = major;
        this.grade = grade;
        this.college = college;
        this.nation = nation;
        this.marriage = marriage;
        this.name = name;
    }

   
    // Property accessors

    public String getStudentId() {
        return this.studentId;
    }
    
    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    public Short getSex() {
        return this.sex;
    }
    
    public void setSex(Short sex) {
        this.sex = sex;
    }

    public String getTelephone() {
        return this.telephone;
    }
    
    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public Date getBirthday() {
        return this.birthday;
    }
    
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getBirthplace() {
        return this.birthplace;
    }
    
    public void setBirthplace(String birthplace) {
        this.birthplace = birthplace;
    }

    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    public String getPolitical() {
        return this.political;
    }
    
    public void setPolitical(String political) {
        this.political = political;
    }

    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }

    public String getMajor() {
        return this.major;
    }
    
    public void setMajor(String major) {
        this.major = major;
    }

    public String getGrade() {
        return this.grade;
    }
    
    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getCollege() {
        return this.college;
    }
    
    public void setCollege(String college) {
        this.college = college;
    }

    public String getNation() {
        return this.nation;
    }
    
    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getMarriage() {
        return this.marriage;
    }
    
    public void setMarriage(String marriage) {
        this.marriage = marriage;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
   








}