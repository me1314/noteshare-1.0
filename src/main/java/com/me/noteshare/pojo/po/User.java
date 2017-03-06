package com.me.noteshare.pojo.po;

import java.util.Date;

/**
 * Created by Administrator on 2017/3/3.
 */
public class User {
    private int id;
    private String name;
    private String gender;
    private String icon;
    private String signature;
    private String eMail;
    private String phone;
    private String contact;
    private Date createDate;
    private String verified;

    public User() {
    }

    public User(String name, String gender, String icon, String signature, String eMail, String phone, String contact, Date createDate, String verified) {
        this.name = name;
        this.gender = gender;
        this.icon = icon;
        this.signature = signature;
        this.eMail = eMail;
        this.phone = phone;
        this.contact = contact;
        this.createDate = createDate;
        this.verified = verified;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public String geteMail() {
        return eMail;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getVerified() {
        return verified;
    }

    public void setVerified(String verified) {
        this.verified = verified;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", icon='" + icon + '\'' +
                ", signature='" + signature + '\'' +
                ", eMail='" + eMail + '\'' +
                ", phone='" + phone + '\'' +
                ", contact='" + contact + '\'' +
                ", createDate=" + createDate +
                ", verified='" + verified + '\'' +
                '}';
    }
}
