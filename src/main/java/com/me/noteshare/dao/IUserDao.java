package com.me.noteshare.dao;

import com.me.noteshare.pojo.po.User;

import java.util.List;

/**
 * Created by Administrator on 2017/3/3.
 */
public interface IUserDao {
    List<User> list();
    List<User> list(int pageIndex,int pageSize);
    int count();
}
