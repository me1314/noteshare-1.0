package com.me.noteshare.service;

import com.me.noteshare.pojo.po.Admin;

/**
 * Author Sunny
 * Date 2017/3/3
 * Time 10:45
 */
public interface AdminService {
    Admin login(Admin admin);
    void updateLastTime(Admin admin);
}
