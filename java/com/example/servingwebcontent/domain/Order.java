package com.example.servingwebcontent.domain;

import javax.persistence.*;

@Entity
@Table(name = "order")
public class Order {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer orderID;

    @Column(name = "sumOrder")
    private String sumOrder;

    @Column(name = "counter")
    private String counter;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Customer_custID")
    private Customer custID;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Book_bookID")
    private Book bookID;

    public Integer getOrderID() {
        return orderID;
    }

    public void setOrderID(Integer orderID) {
        this.orderID = orderID;
    }

    public String getSumOrder() {
        return sumOrder;
    }

    public void setSumOrder(String sumOrder) {
        this.sumOrder = sumOrder;
    }

    public String getCounter() {
        return counter;
    }

    public void setCounter(String counter) {
        this.counter = counter;
    }

    public Customer getCustID() {
        return custID;
    }

    public void setCustID(Customer custID) {
        this.custID = custID;
    }

    public Book getBookID() {
        return bookID;
    }

    public void setBookID(Book bookID) {
        this.bookID = bookID;
    }
}
