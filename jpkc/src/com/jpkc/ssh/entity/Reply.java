package com.jpkc.ssh.entity;

import java.sql.Timestamp;


/**
 * Reply entity. @author MyEclipse Persistence Tools
 */

public class Reply  implements java.io.Serializable {


    // Fields    

     private Integer rid;
     private User user;
     private Question question;
     private Integer touser;
     private String content;
     private Timestamp rtime;


    // Constructors

    /** default constructor */
    public Reply() {
    }

	/** minimal constructor */
    public Reply(User user, Question question, String content, Timestamp rtime) {
        this.user = user;
        this.question = question;
        this.content = content;
        this.rtime = rtime;
    }
    
    /** full constructor */
    public Reply(User user, Question question, Integer touser, String content, Timestamp rtime) {
        this.user = user;
        this.question = question;
        this.touser = touser;
        this.content = content;
        this.rtime = rtime;
    }

   
    // Property accessors

    public Integer getRid() {
        return this.rid;
    }
    
    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public Question getQuestion() {
        return this.question;
    }
    
    public void setQuestion(Question question) {
        this.question = question;
    }

    public Integer getTouser() {
        return this.touser;
    }
    
    public void setTouser(Integer touser) {
        this.touser = touser;
    }

    public String getContent() {
        return this.content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getRtime() {
        return this.rtime;
    }
    
    public void setRtime(Timestamp rtime) {
        this.rtime = rtime;
    }
   








}