package com.me.noteshare.controller;

import com.me.noteshare.pojo.po.ChildTab;
import com.me.noteshare.pojo.po.Note;
import com.me.noteshare.pojo.po.PageQuery;
import com.me.noteshare.pojo.po.Tab;
import com.me.noteshare.service.NoteService;
import com.me.noteshare.service.TabService;
import com.me.noteshare.utils.PathResource;
import com.me.noteshare.utils.UploadAndDownloadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Author Sunny
 * Date 2017/3/2
 * Time 10:36
 */
@Controller
@RequestMapping("/admin")
public class OperateController {

    @Autowired
    private NoteService noteService;

    @Autowired
    private TabService tabService;

    @RequestMapping("/uploadnote")
    public String uploadNote(MultipartFile notefile, Note note) {
        String fileLocalUrl = null;
        if (!notefile.isEmpty() && notefile.getSize() > 0) {
            String allName = notefile.getOriginalFilename();
            try {
                fileLocalUrl = UploadAndDownloadUtil.upload(notefile.getInputStream(), allName);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        noteService.saveNote(note, fileLocalUrl);
        return "/admin/tab";
    }

    @RequestMapping(value = "/tabupload", method = RequestMethod.POST)
    public String tabupload(MultipartFile tabicon, ChildTab ctab) {
        String iconurl = null;
        if (!tabicon.isEmpty() && tabicon.getSize() > 0) {
            String allName = tabicon.getOriginalFilename();
            try {
                iconurl = UploadAndDownloadUtil.uploadTab(tabicon.getInputStream(), allName);
            } catch (IOException e) {
                e.printStackTrace();
            }
            tabService.addTab(ctab, iconurl);
        }
        //问题？为什么用forward会不停的提交数据到数据库
        return "redirect:/admin/tabupload";
    }

    @RequestMapping(value = "/{dir}/{imgpath}")
    public void displayimgall(@PathVariable String imgpath, @PathVariable String dir, HttpServletRequest req, HttpServletResponse resp) {
        ServletOutputStream out = null;
        String uri = req.getRequestURI();
        if(uri.split("/admin")[1] == null || "".equals(uri.split("/admin")[1])){
            return;
        }
        String path = PathResource.getPath("tab.upload") + uri.split("/admin")[1];
        try {
            byte[] bytes = UploadAndDownloadUtil.loadImg(path);
            if (bytes != null) {
                out = resp.getOutputStream();
                out.write(bytes);
                out.flush();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (out != null) {
                try {
                    out.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @RequestMapping(value ="/tabupdate",method = RequestMethod.GET)
    public String tabupdate(Integer id, Model model) {
        ChildTab ctab = tabService.getCtab(id);
        model.addAttribute("ctab", ctab);
        List<Tab> allTab = tabService.getAllTab();
        model.addAttribute("tabs", allTab);
        return "admin/updateCtab";
    }

    @RequestMapping(value = "/updatectab")
    public String tabupdat(MultipartFile tabicon,ChildTab ctab/*MultipartFile tabicon, Model model*/) {
       // System.out.println(ctab.getId());
       /* String iconurl = null;
        System.out.println(11111111);
        ChildTab c = tabService.getCtab(ctab.getId());
        if (!tabicon.isEmpty() && tabicon.getSize() > 0) {
            String allName = tabicon.getOriginalFilename();
            System.out.println(allName);
            try {
                iconurl = UploadAndDownloadUtil.uploadTab(tabicon.getInputStream(), allName);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        tabService.updateCtab(ctab);*/
        return "redirect:/admin/imglist";
    }

    @RequestMapping(value ="/removeCtab",method = RequestMethod.GET)
    public String remove(ChildTab ctab) {
         tabService.remove(ctab);
        return "forward:admin/imglist";
    }

    @RequestMapping("/right")
    public String right(Model model,PageQuery page) {
        page.setPageParams(page.getPageQuery_currPage());
        List<Note> notes = noteService.limitNote(page);
        Integer count = noteService.count();
        model.addAttribute("notes",notes);
        page.setPageParams(count,page.getPageQuery_currPage());
        model.addAttribute("page",page);
        return "/admin/right";
    }

    @RequestMapping(value = "/removenote")
    public String noteupdate(Integer id){
        noteService.removeNote(id);
        return "redirect:/admin/right";
    }

}


