package com.me.noteshare.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Author Sunny
 * Date 2017/3/1
 * Time 16:29
 */
@Controller
@RequestMapping("/admin")
public class AdminControlller {

    @RequestMapping("/top")
    public String top() {
        return "/admin/top";
    }

    @RequestMapping("/left")
    public String left() {
        return "/admin/left";
    }

    @RequestMapping("/index")
    public String index() {
        return "/admin/index";
    }

    @RequestMapping("/right")
    public String right() {
        return "/admin/right";
    }

    @RequestMapping("/imgtable")
    public String imgtable() {
        return "/admin/imgtable";
    }

    @RequestMapping("/form")
    public String form() {
        return "/admin/form";
    }

    @RequestMapping("/imglist")
    public String imglist() {
        return "/admin/imglist";
    }

    @RequestMapping("/imglist1")
    public String imglist1() {
        return "/admin/imglist1";
    }

    @RequestMapping("/tools")
    public String tools() {
        return "/admin/tools";
    }

    @RequestMapping("/filelist")
    public String filelist() {
        return "/admin/filelist";
    }

    @RequestMapping("/tab")
    public String tab() {
        return "/admin/tab";
    }

    @RequestMapping("/defaul")
    public String defaul() {
        return "/admin/default";
    }

    @RequestMapping("/computer")
    public String computer() {
        return "/admin/computer";
    }

    @RequestMapping("/login")
    public String adminlogin() {
        return "/admin/main";
    }
}
