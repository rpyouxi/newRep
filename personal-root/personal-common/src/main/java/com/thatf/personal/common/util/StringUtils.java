package com.thatf.personal.common.util;

public class StringUtils {
	
	/**
	 * @Description:null或空返回true
	 * @author: hr
	 * @date 2017年8月12日 下午12:52:11
	 */
	public static boolean isEmpty(String str){
		if(str==null || str.trim().equals("")){
			return true;
		}
		return false;
	}
	/**
	 * @Description:null或空返回false
	 * @author: hr
	 * @date 2017年8月12日 下午12:52:11
	 */
	public static boolean isNotEmpty(String str){
		return !isEmpty(str);
	}
	
	
}
