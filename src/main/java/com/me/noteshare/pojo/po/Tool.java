package com.me.noteshare.pojo.po;

import java.util.Date;

/**
 * Created by Administrator on 2017/3/2.
 */
public class Tool {
    private int id;
    private String name;
    private String updateDate;
    private String type;
    private long size;
    private String description;
    private String url;
    private int am_id;

    public Tool() {
    }

    public Tool(String name, String updateDate, String type, long size,String description, String url) {
        this.name = name;
        this.updateDate = updateDate;
        this.type = type;
        this.size = size;
        this.description = description;
        this.url = url;
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

    public String getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public long getSize() {
        return size;
    }

    public void setSize(long size) {
        this.size = size;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getAm_id() {
        return am_id;
    }

    public void setAm_id(int am_id) {
        this.am_id = am_id;
    }

    @Override
    public String toString() {
        return "Tool{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", updateDate='" + updateDate + '\'' +
                ", type='" + type + '\'' +
                ", size=" + size +
                ", description='" + description + '\'' +
                ", url='" + url + '\'' +
                ", am_id=" + am_id +
                '}';
    }
}
