package com.me.noteshare.service.Impl;

import com.me.noteshare.dao.IToolDao;
import com.me.noteshare.pojo.po.Tool;
import com.me.noteshare.service.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Author Sunny
 * Date 2017/2/27
 * Time 14:29
 */
@Service
public class ServiceImpl implements service {

    @Autowired
    private IToolDao toolDao;

    public void upload(Tool tool){
        toolDao.upload(tool);
    }
}
