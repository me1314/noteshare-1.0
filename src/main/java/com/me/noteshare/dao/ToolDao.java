package com.me.noteshare.dao;

import com.me.noteshare.mapper.ToolMapper;
import com.me.noteshare.pojo.po.Tool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/3/2.
 */
@Repository
public class ToolDao implements IToolDao {
    @Autowired
    private ToolMapper toolMapper;

    public void upload(Tool tool){
        toolMapper.upload(tool);
    }

    public List<Tool> list() {
        return toolMapper.list();
    }
}
