package com.me.noteshare.dao;

import com.me.noteshare.pojo.po.Tool;

import java.util.List;

/**
 * Created by Administrator on 2017/3/2.
 */
public interface IToolDao {
    void upload(Tool tool);
    List<Tool> list();
}
