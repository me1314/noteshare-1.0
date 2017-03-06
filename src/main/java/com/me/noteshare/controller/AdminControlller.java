package com.me.noteshare.controller;

import com.me.noteshare.pojo.po.Admin;
import com.me.noteshare.pojo.po.ChildTab;
import com.me.noteshare.pojo.po.Tab;
import com.me.noteshare.service.AdminService;
import com.me.noteshare.service.TabService;
import org.apache.ibatis.javassist.compiler.MemberResolver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Random;

/**
 * Author Sunny
 * Date 2017/3/1
 * Time 16:29
 */
@Controller
@RequestMapping("/admin")
public class AdminControlller {

    @Autowired
    private TabService tabService;

    @Autowired
    private AdminService adminService;


    @RequestMapping("/main")
    public String main() {
        return "/admin/main";
    }

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

    @RequestMapping("/imgtable")
    public String imgtable() {
        return "/admin/imgtable";
    }

    @RequestMapping("/fileupload")
    public String form() {
        return "/admin/fileupload";
    }

    @RequestMapping("/imglist")
    public String imglist(Model model) {
        List<ChildTab> allCtab = tabService.getAllCtab();
        model.addAttribute("ctabs",allCtab);
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
    public String tab(Model model) {
        List<Tab> allTab = tabService.getAllTab();
        model.addAttribute("tabs",allTab);
        return "/admin/tab";
    }

    @RequestMapping("/ajax_ctab")
    @ResponseBody
    public List<ChildTab> ctab(Integer id){
        List<ChildTab> allCtab = tabService.getAllCtab(id);
        for(ChildTab catb : allCtab){
            System.out.println(catb.getCtabname());
        }
        return allCtab;
    }



    @RequestMapping("/defaul")
    public String defaul() {
        return "/admin/default";
    }

    @RequestMapping("/computer")
    public String computer() {
        return "/admin/computer";
    }

    @RequestMapping(value="/login",method = RequestMethod.GET)
    public String adminlogin(HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        if(admin!=null){
            return "redirect:/admin/main" ;
        }
        Integer random= new Random().nextInt(10000);
        session.setAttribute("unique",random);
        return "/admin/login";
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String adminlogin(Integer unique,Admin admin,Model model,HttpSession session) {
        Integer uq = (Integer)session.getAttribute("unique");
        session.removeAttribute("unique");
        if(uq.equals(unique) ) {
            Admin login = adminService.login(admin);
            if (login == null) {
                return "redirect:/admin/login";
            }
            session.setAttribute("admin",login);
            adminService.updateLastTime(login);
            return "redirect:/admin/main";
        }
        return "redirect:/admin/login" ;
    }

    @RequestMapping("/loginout")
    public String loginout(HttpSession session){
        Admin admin = (Admin)session.getAttribute("admin");
        if (admin == null){
            return "redirect:/admin/login" ;
        }
        session.removeAttribute("admin");
        return "redirect:/admin/login" ;
    }

    @RequestMapping(value="/tabupload",method = RequestMethod.GET)
    public String tabupload(Model model){
        List<Tab> allTab = tabService.getAllTab();
        model.addAttribute("tabs",allTab);
        return "/admin/tabupload";
    }



}
