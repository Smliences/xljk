package com.jpkc.ssh.entity;

<<<<<<< HEAD

=======
import java.sql.Timestamp;
>>>>>>> f54403e89853473c3e5f76fca2fc458f3ae52645
import java.util.HashSet;
import java.util.Set;


/**
 * Question entity. @author MyEclipse Persistence Tools
 */

public class Question  implements java.io.Serializable {


    // Fields    

     private Integer qid;
     private User user;
     private String title;
     private String content;
<<<<<<< HEAD
     private String wtime;
=======
     private Timestamp wtime;
>>>>>>> f54403e89853473c3e5f76fca2fc458f3ae52645
     private Set replies = new HashSet(0);


    // Constructors

    /** default constructor */
    public Question() {
    }

	/** minimal constructor */
<<<<<<< HEAD
    public Question(String title, String content, String wtime) {
=======
    public Question(String title, String content, Timestamp wtime) {
>>>>>>> f54403e89853473c3e5f76fca2fc458f3ae52645
        this.title = title;
        this.content = content;
        this.wtime = wtime;
    }
    
    /** full constructor */
<<<<<<< HEAD
    public Question(User user, String title, String content, String wtime, Set replies) {
=======
    public Question(User user, String title, String content, Timestamp wtime, Set replies) {
>>>>>>> f54403e89853473c3e5f76fca2fc458f3ae52645
        this.user = user;
        this.title = title;
        this.content = content;
        this.wtime = wtime;
        this.replies = replies;
    }

   
    // Property accessors

    public Integer getQid() {
        return this.qid;
    }
    
    public void setQid(Integer qid) {
        this.qid = qid;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return this.content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }

<<<<<<< HEAD
    public String getWtime() {
        return this.wtime;
    }
    
    public void setWtime(String wtime) {
=======
    public Timestamp getWtime() {
        return this.wtime;
    }
    
    public void setWtime(Timestamp wtime) {
>>>>>>> f54403e89853473c3e5f76fca2fc458f3ae52645
        this.wtime = wtime;
    }

    public Set getReplies() {
        return this.replies;
    }
    
    public void setReplies(Set replies) {
        this.replies = replies;
    }
   








}