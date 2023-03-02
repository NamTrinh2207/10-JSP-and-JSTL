package com.example.customermanager;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Customer {
    private String name;
    private Date date;
    private String address;
    private static final DateFormat simpleDateFormat = new SimpleDateFormat("MM-dd-yyyy");

    public Customer() {
    }

    public Customer(String name, String date, String address) {
        this.name = name;
        this.address = address;
        try {
            this.date = simpleDateFormat.parse(date);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
