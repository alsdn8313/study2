package com.study.util;

import java.text.DecimalFormat;

public class FileUtil0 {

		//300byte면 "300bytes", 1024bytes - 1Kb, 1024 - 1Mb
	public static String fancySize(long size) {
		DecimalFormat df = new DecimalFormat("999,999,0");
		if(size < 1024) {
			return size + "Bytes";
			
		}else if(size < (1024*1024)){
			return df.format(size/1024) + "Kb";
			
		}else {
			return df.format(size/(1024*1024)) + "Mb";
			
		}
		
		
	}
	public static void main(String[] args) {
		System.out.println(FileUtil0.fancySize(500));
		System.out.println(FileUtil0.fancySize(2090));
		System.out.println(FileUtil0.fancySize(1050000));
	}
}