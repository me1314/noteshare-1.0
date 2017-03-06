package com.me.noteshare.pojo.po;

import java.util.Date;

/**
 * Author Sunny
 * Date 2017/3/3
 * Time 10:31
 */
public class Admin {
    private Integer id;
    private String name;
    private String password;
    private Integer is_active;
    private Date last_time;

    public Admin() {
    }

    public Admin(String name, String password, Integer is_active, Date last_time) {
        this.name = name;
        this.password = password;
        this.is_active = is_active;
        this.last_time = last_time;
    }

    public Date getLast_time() {
        return last_time;
    }

    public void setLast_time(Date last_time) {
        this.last_time = last_time;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getIs_active() {
        return is_active;
    }

    public void setIs_active(Integer is_active) {
        this.is_active = is_active;
    }
}
