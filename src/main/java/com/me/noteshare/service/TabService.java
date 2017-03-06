package com.me.noteshare.service;

import com.me.noteshare.pojo.po.ChildTab;
import com.me.noteshare.pojo.po.Tab;

import java.util.List;

/**
 * Created by Sunny on 2017/3/2.
 */
public interface TabService {
    List<Tab> getAllTab();
    List<ChildTab> getAllCtab(Integer id);
    List<ChildTab> getAllCtab();
    void addTab(ChildTab ctab,String iconurl);
    ChildTab getCtab(Integer id);
    void updateCtab(ChildTab ctab);
    void remove(ChildTab ctab);
    Integer count();
}
