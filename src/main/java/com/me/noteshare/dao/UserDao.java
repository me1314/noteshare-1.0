package com.me.noteshare.dao;

import com.me.noteshare.mapper.UserMapper;
import com.me.noteshare.pojo.po.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/3/3.
 */
@Repository
public class UserDao implements IUserDao {
    @Autowired
    private UserMapper userMapper;

    public List<User> list() {
        return userMapper.list();
    }

    public List<User> list(int pageIndex, int pageSize) {
        return userMapper.list();
    }

    public int count() {
        return userMapper.count();
    }
}
