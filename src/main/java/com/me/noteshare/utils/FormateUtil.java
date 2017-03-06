package com.me.noteshare.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Author Sunny
 * Date 2017/3/2
 * Time 12:23
 */
public class FormateUtil {
    /**
     * 时间转化为String
     * @param date
     * @return
     */
    public static String DateformatStr(Date date){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            return format.format(date);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 时间格式化
     * @param date
     * @return
     */
    public static Date DateformatDate(String date){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            return format.parse(date);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static String imgPathFormat(String rootPath,String absorutePath){
        if(rootPath ==null ||"".equals(rootPath) || absorutePath == null || "".equals(absorutePath)){
            return null;
        }
        String imgpath = absorutePath.substring(rootPath.length()+1);
        return imgpath ;
    }
}
