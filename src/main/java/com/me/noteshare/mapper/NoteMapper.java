package com.me.noteshare.mapper;

import com.me.noteshare.pojo.po.Note;
import com.me.noteshare.pojo.po.PageQuery;

import java.util.List;

/**
 * Author Sunny
 * Date 2017/3/2
 * Time 11:57
 */
public interface NoteMapper {
    //保存文章
    void save(Note note);

    List<Note> listNote(PageQuery page);

    Integer count();

    void noteupdate(Note note);

    Note getNote(Integer id);

    void removeNote(Integer id);
}
