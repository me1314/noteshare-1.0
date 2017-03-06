package com.me.noteshare.service.Impl;

import com.me.noteshare.mapper.AdminMapper;
import com.me.noteshare.pojo.po.Admin;
import com.me.noteshare.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * Author Sunny
 * Date 2017/3/3
 * Time 10:45
 */
@Service("adminService")
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;
    public Admin login(Admin admin) {
        if(admin == null){
            return null;
        }
        return adminMapper.get(admin);
    }

    public void updateLastTime(Admin admin) {
        Admin ad=new Admin(admin.getName(),admin.getPassword(),admin.getIs_active(),admin.getLast_time());
        ad.setId(admin.getId());
        ad.setLast_time(new Date());
        adminMapper.updateLastTime(ad);
    }
}
