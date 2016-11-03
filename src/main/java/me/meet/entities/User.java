package me.meet.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import java.util.Date;

/**
 * Created by Dmytro Lagus on 27.09.2016.
 */
@Entity
@Table(name = "users")
public class User {

    public User() {}

    @Column(name = "email", length = 50)
    private String email;

    @Id
    @Column(name = "userid")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer userId;

    @Column(name = "password", length = 50)
    private String password;

    @Column (name = "phone", length = 20)
    private String phone;

    @Column (name = "country", length = 40)
    private String country;

    @Column (name = "city", length = 40)
    private String city;

    @Column (name = "firstname", length = 40)
    private String firstName;

    @Column (name = "lastname", length = 40)
    private String lastName;

    @Column (name = "interests")
    private Integer interests;

    @Temporal(TemporalType.TIMESTAMP)
    @Column (name = "birthday")
    private Date birthday;

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
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

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public Integer getInterests() {
        return interests;
    }

    public void setInterests(Integer interests) {
        this.interests = interests;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}
