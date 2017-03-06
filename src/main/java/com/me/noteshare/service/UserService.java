package com.me.noteshare.service;

import com.me.noteshare.pojo.po.User;

import java.util.List;

/**
 * Created by Administrator on 2017/3/3.
 */
public interface UserService {
    List<User> list();
    List<User> list(int pageIndex,int pageSize);
    int count();
}
