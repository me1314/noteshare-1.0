package com.me.noteshare.pojo.po;

import java.util.Set;

/**
 * Created by Sunny on 2017/3/2.
 */
public class Tab {
    private Integer id;
    private String tabname;
    private Set<ChildTab> childTabs;

    public Tab(String tabname, Set<ChildTab> childTabs) {
        this.tabname = tabname;
        this.childTabs = childTabs;
    }

    public Tab() {
    }

    public Set<ChildTab> getChildTabs() {
        return childTabs;
    }

    public void setChildTabs(Set<ChildTab> childTabs) {
        this.childTabs = childTabs;
    }

    public Tab(String tabname) {
        this.tabname = tabname;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTabname() {
        return tabname;
    }

    public void setTabname(String tabname) {
        this.tabname = tabname;
    }
}
