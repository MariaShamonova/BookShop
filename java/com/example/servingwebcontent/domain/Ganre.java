package com.example.servingwebcontent.domain;

import javax.persistence.*;

@Entity
@Table(name = "ganre")
public class Ganre {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer ganreID;

    @Column(name = "titleGanre")
    private String titleGanre;

    public Integer getGanreID() {
        return ganreID;
    }

    public void setGanreID(Integer ganreID) {
        this.ganreID = ganreID;
    }

    public String getTitleGanre() {
        return titleGanre;
    }

    public void setTitleGanre(String titleGanre) {
        this.titleGanre = titleGanre;
    }


}
