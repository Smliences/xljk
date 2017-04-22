package com.jpkc.ssh.test;

import java.io.File;
import java.io.IOException;

import org.junit.Test;

import com.jpkc.ssh.util.FileUtil;

public class TestFileUtil {
	
	
	@Test
	public void testGetFile(){
		File file = FileUtil.getFile("C:/Users/温柔的爱/Desktop/网页", "说明");
		System.out.println(file.getName());
		System.out.println(file.getAbsolutePath());
		System.out.println(file.getFreeSpace());
	}
	
	@Test
	public void testSaveFile() throws IOException{
		File file = new File("F:/BaiduYunDownload/就业班/day56_Oracle安装、函数/oracle-day01资料/Oracle文档/Ora9iSQLRef.chm");
		FileUtil.saveFile("C:/Users/温柔的爱/Desktop",file,"Ora9iSQLRef.chm","马景");
	}
	
	@Test
	public void testDeleteFile() throws IOException{
		FileUtil.deleteFile("C:/Users/温柔的爱/Desktop", "F19804122CB4445EB2A4A67BFAF45183");
		FileUtil.deleteDirectory("C:/Users/温柔的爱/Desktop/test");
	}
	
}
