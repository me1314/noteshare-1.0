package com.me.noteshare.controller;

import com.me.noteshare.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Administrator on 2017/3/3.
 */
@Controller
@RequestMapping("/admin")
public class UserController {
    @Autowired
    private UserService userServiceImpl;

  /*  @RequestMapping("imgtable")
    public String list(Model model){
        model.addAttribute("users",userServiceImpl.list());
        return "admin/imgtable";
    }
*/
/*    //分页
    @RequestMapping("imgtable")
    public String list(Model model, @RequestParam int pageIndex, int pageSize){
        model.addAttribute("users",userServiceImpl.list(pageIndex,pageSize));
        return "admin/imgtable/{pageIndex}";
    }*/
}
