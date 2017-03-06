package com.me.noteshare.mapper;

import com.me.noteshare.pojo.po.User;

import java.util.List;

/**
 * Created by Administrator on 2017/3/3.
 */
public interface UserMapper {
    List<User> list(int pageIndex,int pageSize);
    List<User> list();
    int count();
}
