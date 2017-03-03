package com.me.noteshare.service.Impl;

import com.me.noteshare.dao.IUserDao;
import com.me.noteshare.pojo.po.User;
import com.me.noteshare.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/3/3.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private IUserDao userDao;

    public List<User> list() {
        return userDao.list();
    }

    public List<User> list(int pageIndex, int pageSize) {
        return userDao.list();
    }

    public int count() {
        return userDao.count();
    }
}
