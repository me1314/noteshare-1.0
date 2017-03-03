package com.me.noteshare.controller;

import com.me.noteshare.pojo.po.Tool;
import com.me.noteshare.service.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;


/**
 * Created by Administrator on 2017/3/2.
 */
@Controller
@RequestMapping("/admin")
public class UploadController {

    @Autowired
    private service serviceImpl;
/*    @RequestMapping(value = "/form",method = RequestMethod.POST)
    public String uploadTool(@RequestParam("files") MultipartFile[] files) throws IOException {
        String msg="文件上传成功！";
        for (int i = 0;i < files.length; i++){
            if (files[i].getSize()==0){
                msg = "对不起，不能上传空文件 ！";
                continue;
            }
            if (files[i].getSize() > 1024*1024*10){
                msg = "文件太大，最大为10M ！";
                continue;
            }
            FileOutputStream fos = new FileOutputStream(
                    new File("E:\\noteshare\\admin\\tools\\"+files[i].getOriginalFilename()));
            FileCopyUtils.copy(files[i].getInputStream(),fos);
            System.out.println(msg);
        }
        return "redirect:/admin/form";
    }*/

//工具上传
    @RequestMapping(value = "/form",method = RequestMethod.POST)
    public String uploadTool(@RequestParam("files") MultipartFile files,@RequestParam() String file_description) throws IOException {
        Tool tool = new Tool();
        String msg="";
        if (files.getSize()==0){
            msg = "对不起，不能上传空文件 ！";
        } else if (files.getSize() > 1024*1024*10){
            msg = "文件太大，最大为10M ！";
        } else {
            FileOutputStream fos = new FileOutputStream(
                    new File("E:\\noteshare\\admin\\tools\\"+files.getOriginalFilename()));
            FileCopyUtils.copy(files.getInputStream(),fos);
            tool.setName(files.getOriginalFilename());
            tool.setUpdateDate(new Date());
            tool.setType(files.getOriginalFilename().substring(files.getOriginalFilename().length()-4));
            tool.setSize(files.getSize());
            tool.setDescription(file_description);
            tool.setUrl("E:\\noteshare\\admin\\tools\\" + files.getOriginalFilename());
            tool.setAm_id(11);
            serviceImpl.upload(tool);
            msg = "文件上传成功 ！";
        }
        return "redirect:/admin/form";
    }

//    显示工具列表
    @RequestMapping("/filelist")
    public String list(Model model){
        List<Tool> tools = serviceImpl.list();
        model.addAttribute("tools",tools);
        return "admin/filelist";
    }
}
