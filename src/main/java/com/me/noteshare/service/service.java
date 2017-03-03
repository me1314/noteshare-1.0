package com.me.noteshare.service;

import com.me.noteshare.dao.IToolDao;
import com.me.noteshare.dao.ToolDao;
import com.me.noteshare.pojo.po.Tool;

import java.util.List;

/**
 * Author Sunny
 * Date 2017/2/27
 * Time 14:29
 */
public interface service {
    void upload(Tool tool);
    List<Tool> list();
}
