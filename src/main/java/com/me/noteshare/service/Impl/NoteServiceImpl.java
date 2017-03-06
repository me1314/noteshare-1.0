package com.me.noteshare.service.Impl;

import com.me.noteshare.mapper.NoteMapper;
import com.me.noteshare.pojo.po.Note;
import com.me.noteshare.pojo.po.PageQuery;
import com.me.noteshare.service.NoteService;
import com.me.noteshare.utils.UploadAndDownloadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Author Sunny
 * Date 2017/2/27
 * Time 14:29
 */
@Service("noteService")
public class NoteServiceImpl implements NoteService {

    @Autowired
    private NoteMapper noteMapper;

    public void saveNote(Note note, String fileLocalUrl) {
        String fLocalUrl = null;
        if (note != null) {

            if (note.getTitle() !=null && !"".equals(note.getTitle())&& note.getContent() != null && !"".equals(note.getContent())) {
                fLocalUrl= UploadAndDownloadUtil.contenTransformFile(note.getContent(), note.getTitle());
            }
            if(fileLocalUrl!=null && !"".equals(fileLocalUrl)&&fLocalUrl != null && !"".equals(fLocalUrl)){
                fLocalUrl=fileLocalUrl+"&"+fLocalUrl;
            }else if(fileLocalUrl!=null && !"".equals(fileLocalUrl)){
                fLocalUrl = fileLocalUrl;
            }
            note.setUrl(fLocalUrl);
            note.setTime(new Date());
            noteMapper.save(note);
        }
    }

    public List<Note> limitNote(PageQuery page) {
        if(page==null){
            return null;
        }

        return noteMapper.listNote(page);
    }

    public Integer count() {
        return  noteMapper.count();
    }

    public void noteUpdate(Note note) {
        if(note == null){
            return;
        }
        noteMapper.noteupdate(note);
    }

    public Note getNote(Integer id) {
        if(id == null){
            return null;
        }
        return noteMapper.getNote(id);
    }

    public void removeNote(Integer id) {
        if(id == null)
            return;
        noteMapper.removeNote(id);
    }
}
