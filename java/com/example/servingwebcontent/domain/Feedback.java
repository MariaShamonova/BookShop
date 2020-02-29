package com.example.servingwebcontent.domain;

import javax.persistence.*;
import java.util.Date;

@Entity
@Embeddable
@Table(name = "feedback")
public class Feedback {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer feedID;

    @Column(name = "message")
    private String message;

    @Column(name = "rating")
    private Integer rating;

    @Column(name = "date")
    private Date date;

    @Column(name = "User_userID")
    private Integer User_userID;


    public Integer getFeedID() {
        return feedID;
    }

    public void setFeedID(Integer feedID) {
        this.feedID = feedID;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Integer getRating() {
        return rating;
    }

    public void setRating(Integer rating) {
        this.rating = rating;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getUser_userID() {
        return User_userID;
    }

    public void setUser_userID(Integer user_userID) {
        User_userID = user_userID;
    }
}
