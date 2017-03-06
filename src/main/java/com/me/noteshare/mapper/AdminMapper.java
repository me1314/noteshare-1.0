package com.me.noteshare.mapper;

import com.me.noteshare.pojo.po.Admin;

/**
 * Author Sunny
 * Date 2017/3/3
 * Time 10:35
 */
public interface AdminMapper {
    Admin get(Admin admin);
    void updateLastTime(Admin admin);
}
