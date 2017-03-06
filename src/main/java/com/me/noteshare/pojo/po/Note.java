package com.me.noteshare.pojo.po;

import java.util.Date;

/**
 * Author Sunny
 * Date 2017/3/2
 * Time 10:48
 */
public class Note {
    //文章的id
    private Integer id;
    //文章的编号
    private String no;
    //文章的标题
    private String title;
    //文章的发布时间
    private Date time;
    //文章的引用地址
    private String refurl;
    //文章的本地地址
    private String url;

    //文章的内容
    private String content;
    //文章对应的标签
    private ChildTab ctab;
    //文章的上传人员
    private Admin admin;

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    public Note() {
    }

    public Note(String no, String title, Date time, String refurl, String url, String content, Admin admin, ChildTab ctab) {
        this.no = no;
        this.title = title;
        this.time = time;
        this.refurl = refurl;
        this.url = url;
        this.content = content;
        this.admin = admin;
        this.ctab = ctab;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        String n="2017";
        this.no = no;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getRefurl() {
        return refurl;
    }

    public void setRefurl(String refurl) {
        this.refurl = refurl;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }


    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public ChildTab getCtab() {
        return ctab;
    }

    public void setCtab(ChildTab ctab) {
        this.ctab = ctab;
    }

}
