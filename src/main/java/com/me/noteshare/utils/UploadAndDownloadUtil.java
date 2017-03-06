package com.me.noteshare.utils;

import org.springframework.util.FileCopyUtils;

import java.io.*;
import java.util.Date;
import java.util.ResourceBundle;

/**
 * Author Sunny
 * Date 2017/3/2
 * Time 11:29
 */
public class UploadAndDownloadUtil {
    private static String fileSaveAddress;
    private static String tabSaveAddress;
    private static String dirName = FormateUtil.DateformatStr(new Date());
    static{
        fileSaveAddress = ResourceBundle.getBundle("noteshare").getString("file.upload");
        tabSaveAddress = ResourceBundle.getBundle("noteshare").getString("tab.upload");

    }

    /**
     * 文件上传工具类
     * @param in
     * @param allName
     */
    public static String upload(InputStream in,String allName){
        new File(fileSaveAddress+"/"+dirName).mkdirs();
        String fileLocalUrl=fileSaveAddress+"/"+dirName+"/"+allName;
        try {
            FileCopyUtils.copy(in,new BufferedOutputStream(new FileOutputStream(new File(fileLocalUrl))));
            return fileLocalUrl;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * Tab上传工具类
     * @param in
     * @param allName
     */
    public static String uploadTab(InputStream in,String allName){
        new File(tabSaveAddress+"/"+dirName).mkdirs();
        String fileLocalUrl=tabSaveAddress+"/"+dirName+"/"+allName;
        try {
            FileCopyUtils.copy(in,new BufferedOutputStream(new FileOutputStream(new File(fileLocalUrl))));
            return fileLocalUrl;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 内容转为文件
     * @param content
     * @param title
     * @return
     */
    public static String contenTransformFile(String content,String title){
        new File(fileSaveAddress+"/"+dirName).mkdirs();
        String fileLocalUrl=fileSaveAddress+"/"+dirName+"/"+title+".txt";
        OutputStream fileOut = null;
        try {
            fileOut = new BufferedOutputStream(new FileOutputStream(new File(fileLocalUrl)));
            fileOut.write(content.getBytes());
            fileOut.flush();
            return fileLocalUrl;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }finally{
            try {
                if(fileOut!=null)
                fileOut.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 此方法用于显示获取图片并转为字节
     * @param imgpath
     * @return
     */
    public static byte[] loadImg(String imgpath){
        if(imgpath ==null || "".equals(imgpath)){
            return null;
        }
        InputStream in=null;
        OutputStream out = null;
        byte[] b= null;
        try {
            in=new BufferedInputStream(new FileInputStream(new File(imgpath)));
            in.read(b=new byte[in.available()]);
            return b;
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            try {
                if(in!=null)
                    in.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return b;
    }
}
