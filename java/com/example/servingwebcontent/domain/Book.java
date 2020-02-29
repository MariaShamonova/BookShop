package com.example.servingwebcontent.domain;

import javax.persistence.*;

@Entity
@Table(name = "book")
public class Book{
    @Id
    @Column(name = "bookID")
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer bookID;

    @Column(name = "title")
    private String title;

    @Column(name = "title_ganre")
    private String title_ganre;

    @Column(name = "price")
    private Integer price;

    @Column(name = "description")
    private String description;

    @Column(name = "author")
    private String author;

    @Column(name = "publish_house")
    private String publish_house;

    @Column(name = "avr_rating")
    private Integer avr_rating;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Feedback_feedID")
    private Feedback feedID;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Ganre_ganreID")
    private Ganre ganreID;

    public Book() { }


    public Book(String title, String title_ganre, Integer price, String author, String publish_house, String description, Integer avr_rating) {

        this.title = title;
        this.title_ganre = title_ganre;
        this.price = price;
        this.description = description;
        this.author = author;
        this.publish_house = publish_house;
        this.avr_rating = avr_rating;

    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }


    public Integer getAvr_rating() {
        return avr_rating;
    }

    public void setAvr_rating(Integer avr_rating) {
        this.avr_rating = avr_rating;
    }

    public Feedback getFeedID() {
        return feedID;
    }

    public void setFeedID(Feedback feedID) {
        this.feedID = feedID;
    }


    public Ganre getGanreID() {
        return ganreID;
    }

    public void setGanreID(Ganre ganreID) {
        this.ganreID = ganreID;
    }

    public String getTitle_ganre() {
        return title_ganre;
    }

    public void setTitle_ganre(String title_ganre) {
        this.title_ganre = title_ganre;
    }

    public String getTitle() {
        return title;
    }

    public String getPublish_house() {
        return publish_house;
    }

    public void setPublish_house(String publish_house) {
        this.publish_house = publish_house;
    }
}
