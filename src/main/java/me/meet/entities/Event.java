package me.meet.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Time;
import java.util.Date;

/**
 * Created by User on 05.10.2016.
 */

@Entity
@Table(name = "event")
public class Event {

    public Event() {
    }

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "name", length = 40)
    private String name;

    @Column(name = "short_decription", length = 300)
    private String shortDescription;

    @Column(name = "decription", length = "3000")
    private String description;

    @Column(name = "date", length = 10)
    private String date;

    @Column(name = "time", length = 10)
    private String time;

    @Column(name = "website", length = 100)
    private String website;

    @Column(name = "twitter", length = 50)
    private String twitter;

    @Column(name = "facebook", length = 100)
    private String facebook;

    @Column(name = "instagram", length = 100)
    private String instagram;

    @Column(name = "category", length = 40)
    private String category;

    @Column(name = "place")
    private Integer place;          //BE CAREFUL ITS NULLABLE FOR NOW

    @Column(name = "country", length = 50)
    private String country;

    @Column(name = "city", length = 50)
    private String city;

    @Column(name = "views")
    private Long views;

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getFacebook() {
        return facebook;
    }

    public void setFacebook(String facebook) {
        this.facebook = facebook;
    }

    public String getInstagram() {
        return instagram;
    }

    public void setInstagram(String instagram) {
        this.instagram = instagram;
    }

    public Integer getPlace() {
        return place;
    }

    public void setPlace(Integer place) {
        this.place = place;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getTwitter() {
        return twitter;
    }

    public void setTwitter(String twitter) {
        this.twitter = twitter;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }
    //TODO Create category entity
    //TODO Make a relation and IdClass
//    @Column (name = "category")
//    private

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Time getTime() {
        return time;
    }

    public void setTime(Time time) {
        this.time = time;
    }
}
