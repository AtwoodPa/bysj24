package cn.util;

import java.text.SimpleDateFormat;
import java.util.Date;


public class Const {
	public static String ROOT = "/yimiao/admin/";
	public static String QIAN = "/yimiao/";
	
	public static String getTime() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(new Date());
	}
	public static String getShortTime() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(new Date());
	}
	
	public static String getOrdersno() {
		SimpleDateFormat sdf = new SimpleDateFormat("ddHHmmssSSS");
		return sdf.format(new Date());
	}
	
}
