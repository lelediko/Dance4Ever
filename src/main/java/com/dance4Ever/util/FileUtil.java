package com.dance4Ever.util;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class FileUtil {
	public static String fileToString(String path , String fileName ){
		
		return "";
	}
	
	public static String getPath(String id){
		String path = "E:workspace/Dance4Ever/src/main/webapp/resources/videos/"+id;
		return path;
	}
	
	public static byte[] getByteFromFile(File file){
		if(file == null){
			return null;
		}
		try {
			FileInputStream fis = new FileInputStream(file);
			ByteArrayOutputStream out = new ByteArrayOutputStream(1000);
			byte[] b = new byte[1000];
			try {
				for (int n;(n = fis.read(b)) != -1;) {
				        out.write(b, 0, n);
				    }
				
				out.close();
				fis.close();
				return out.toByteArray();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}
}
