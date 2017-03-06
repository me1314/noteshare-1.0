package com.me.noteshare.service.Impl;

import com.me.noteshare.mapper.TabMapper;
import com.me.noteshare.pojo.po.ChildTab;
import com.me.noteshare.pojo.po.Tab;
import com.me.noteshare.service.TabService;
import com.me.noteshare.utils.FormateUtil;
import com.me.noteshare.utils.PathResource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by Sunny on 2017/3/2.
 */
@Service("tabService")
public class TabServiceImpl implements TabService{

    @Autowired
    private TabMapper tabMapper;

    public List<Tab> getAllTab() {

        return tabMapper.listTab();
    }

    public List<ChildTab> getAllCtab(Integer id) {
        if(id == null){
            return  null;
        }
        List<ChildTab> ctabs = tabMapper.listCtabById(id);
        return ctabs;
    }

    public List<ChildTab> getAllCtab() {
        List<ChildTab> ctabs =new ArrayList<ChildTab>();
        List<ChildTab> list = tabMapper.listCtab();
        for (ChildTab ctab : list){
            String imgpath = FormateUtil.imgPathFormat(PathResource.getPath("tab.upload"), ctab.getIconurl());
            ctab.setIconurl(imgpath);
            ctabs.add(ctab);
        }
        return ctabs;
    }

    public void addTab(ChildTab ctab,String iconurl) {
        if(ctab!=null){
            ctab.setIconurl(iconurl);
            tabMapper.addCtab(ctab);
        }
    }

    public ChildTab getCtab(Integer id) {
        if(id == null){
            return null;
        }
        ChildTab ctab = tabMapper.getCtab(id);
        String rootPath=PathResource.getPath("tab.upload");
        if(rootPath ==null ||"".equals(rootPath) || ctab.getIconurl() == null || "".equals(ctab.getIconurl())){
            return null;
        }
        String imgpath = ctab.getIconurl().substring(rootPath.length()+1);

        ctab.setIconurl(imgpath);
        return ctab;
    }

    public void updateCtab(ChildTab ctab) {
        if(ctab != null){
            tabMapper.updateCtab(ctab);
        }
    }

    public void remove(ChildTab ctab) {
        if (ctab != null){
            File file = new File(tabMapper.getCtab(ctab.getId()).getIconurl());
            if(file.exists()){
                file.delete();
            }
            tabMapper.deleteCtab(ctab);
        }

    }

    public Integer count() {

        return null;
    }
}
