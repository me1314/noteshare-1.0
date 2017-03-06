package com.me.noteshare.mapper;

import com.me.noteshare.pojo.po.ChildTab;
import com.me.noteshare.pojo.po.Tab;

import java.util.List;

/**
 * Created by Sunny on 2017/3/2.
 */
public interface TabMapper {
    //获取标签
    List<Tab> listTab();
    //获取子标签
    List<ChildTab> listCtabById(Integer id);
    //添加标签
    void addCtab(ChildTab ctab);
    //获取子标签
    List<ChildTab> listCtab();

    ChildTab getCtab(Integer id);

    void updateCtab(ChildTab ctab);

    void deleteCtab(ChildTab ctab);

}
