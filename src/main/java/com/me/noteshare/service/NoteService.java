package com.me.noteshare.service;

import com.me.noteshare.pojo.po.Note;
import com.me.noteshare.pojo.po.PageQuery;

import java.util.List;

/**
 * Author Sunny
 * Date 2017/2/27
 * Time 14:29
 */
public interface NoteService {
    void saveNote(Note note,String fileLocalUrl);

    List<Note> limitNote(PageQuery page);
    Integer count();
    void noteUpdate(Note note);
    Note getNote(Integer id);
    void removeNote(Integer id);
}
