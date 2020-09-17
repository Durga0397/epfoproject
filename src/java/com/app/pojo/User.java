/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.pojo;

import java.time.LocalDate;

/**
 *
 * @author amolw
 */
public class User {
    private Integer id;
    private String name;
    private String address;
    private String PAN;
    private String DOB;
    private String password;

    public void setPassword(String password) {
        this.password = password;
    }

    public User() {

    }

    public User(String name, String address, String PAN, String DOB) {
        this.name = name;
        this.address = address;
        this.PAN = PAN;
        this.DOB = DOB;

    }

    public String getPassword() {
        return password;
    }

    public User(Integer id, String name, String address, String PAN, String DOB,String password) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.PAN = PAN;
        this.DOB = DOB;
        this.password=password;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPAN() {
        return PAN;
    }

    public void setPAN(String PAN) {
        this.PAN = PAN;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    @Override
    public String toString() {
        return "User [name=" + name + ", address=" + address + ", PAN=" + PAN + ", DOB=" + DOB + "]";
    }
}
