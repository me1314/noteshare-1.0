package com.me.noteshare.pojo.po;

/**
 * Created by Sunny on 2017/3/2.
 */
public class ChildTab {
    private Integer id;
    private String ctabname;
    private String iconurl;
    private Tab tab;

    public ChildTab() {
    }

    public ChildTab(String ctabname, String iconurl, Tab tab) {
        this.ctabname = ctabname;
        this.iconurl = iconurl;
        this.tab = tab;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCtabname() {
        return ctabname;
    }

    public void setCtabname(String ctabname) {
        this.ctabname = ctabname;
    }

    public String getIconurl() {
        return iconurl;
    }

    public void setIconurl(String iconurl) {
        this.iconurl = iconurl;
    }

    public Tab getTab() {
        return tab;
    }

    public void setTab(Tab tab) {
        this.tab = tab;
    }
}
