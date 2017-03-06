package com.me.noteshare.utils;

import java.util.ResourceBundle;

/**
 * Created by Sunny on 2017/3/4.
 */
public class PathResource {
    static ResourceBundle noteshare = null;
    static{
        noteshare = ResourceBundle.getBundle("noteshare");
    }
   public static String getPath(String key){
       if(key == null){
           return null;
       }
       return noteshare.getString(key);
   }
}
