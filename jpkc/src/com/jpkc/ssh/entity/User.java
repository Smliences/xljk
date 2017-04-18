package com.jpkc.ssh.entity;

import java.util.HashSet;
import java.util.Set;


/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User  implements java.io.Serializable {


    // Fields    

     private Integer uid;
     private String pwd;
     private String name;
     private String num;
     private String pro;
     private String cls;
     private Boolean status;
     private String dept;
     private Boolean role;
     private Set replies = new HashSet(0);
     private Set questions = new HashSet(0);


    // Constructors

    /** default constructor */
    public User() {
    }

	/** minimal constructor */
    public User(String pwd, String name, String num, Boolean status, Boolean role) {
        this.pwd = pwd;
        this.name = name;
        this.num = num;
        this.status = status;
        this.role = role;
    }
    
    /** full constructor */
    public User(String pwd, String name, String num, String pro, String cls, Boolean status, String dept, Boolean role, Set replies, Set questions) {
        this.pwd = pwd;
        this.name = name;
        this.num = num;
        this.pro = pro;
        this.cls = cls;
        this.status = status;
        this.dept = dept;
        this.role = role;
        this.replies = replies;
        this.questions = questions;
    }

   
    // Property accessors

    public Integer getUid() {
        return this.uid;
    }
    
    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getPwd() {
        return this.pwd;
    }
    
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public String getNum() {
        return this.num;
    }
    
    public void setNum(String num) {
        this.num = num;
    }

    public String getPro() {
        return this.pro;
    }
    
    public void setPro(String pro) {
        this.pro = pro;
    }

    public String getCls() {
        return this.cls;
    }
    
    public void setCls(String cls) {
        this.cls = cls;
    }

    public Boolean getStatus() {
        return this.status;
    }
    
    public void setStatus(Boolean status) {
        this.status = status;
    }

    public String getDept() {
        return this.dept;
    }
    
    public void setDept(String dept) {
        this.dept = dept;
    }

    public Boolean getRole() {
        return this.role;
    }
    
    public void setRole(Boolean role) {
        this.role = role;
    }

    public Set getReplies() {
        return this.replies;
    }
    
    public void setReplies(Set replies) {
        this.replies = replies;
    }

    public Set getQuestions() {
        return this.questions;
    }
    
    public void setQuestions(Set questions) {
        this.questions = questions;
    }
   








}