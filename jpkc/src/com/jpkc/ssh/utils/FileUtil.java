package com.jpkc.ssh.utils;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.io.FileUtils;


public class FileUtil {
	
	/**
	 * 根据目标路径，获取该路径下的所有文件（不包含子文件夹）
	 * @return 返回包含所有文件的一个集合
	 * @throws RuntimeException
	 */
	public static Collection<File> getFileFromDirectory(String path) throws RuntimeException{
		Collection<File> list = new ArrayList<File>();
		File fileDir = new File(path);
		if (fileDir.isDirectory()) {
			File[] files = fileDir.listFiles();
			for (File file : files) {
				if(file.isFile()){
					list.add(file);
				}
			}
		}

		return list;
	}

	/**
	 * 根据目标路径，获取该路径下的所有文件（不包含子文件夹）的信息
	 * @return 返回包含所有文件信息的一个集合
	 */
	public static Collection<Map<String, String>> getFileMessageFromDirectory(String path){
		Collection<File> filelist = getFileFromDirectory(path);
		Collection<Map<String, String>> fileMessages = new ArrayList<Map<String, String>>();
		for (File file : filelist) {
			String[] messages = file.getName().split("#");
			Map<String, String> map = new HashMap<String, String>();
			map.put("username", messages[0]);
			map.put("fileflag", messages[1]);
			map.put("submitTime", messages[2].replace("--", ":"));
			map.put("filename", messages[3]);
			fileMessages.add(map);
		}
		return fileMessages;
	}
	
	
	
	
	/**
	 * 根据目标路径和文件唯一标记，获取指定条件的文件
	 * @param flag 文件标记
	 * @return 返回唯一的文件或者文件不存在返回null
	 */
	public static File getFile(String path, String flag){
		File fileDir = new File(path);
		if (fileDir.isDirectory()) {
			File[] files = fileDir.listFiles();
			if (files!=null) {
				for (File file : files) {
					if (file!=null) {
						if(file.isFile()){
							if (file.getName().contains(flag)) {
								return file;
							}
						}
					}
				}
			}
		}
		else {
			throw new RuntimeException(path + " is not a directory");
		}
		return null;
	}
	
	/**
	 * 保存上传的文件到本地
	 * @param inputFile 上传的文件
	 * @param uploadUser 上传的用户
	 * @throws IOException
	 */
	public static void saveFile(String path, File inputFile,String filename, String username) throws IOException {
		UUID uuid = UUID.randomUUID();
		String flag = uuid.toString().replace("-", "").toUpperCase();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH--mm--ss");
		String date = simpleDateFormat.format(new Date());
		String name = username + "#" + flag + "#"+ date + "#" + filename;
		File outputFile = new File(path+File.separator+name);
		FileUtils.copyFile(inputFile, outputFile);
	}
	
	/**
	 * 删除指定文件
	 * @param flag 文件标记
	 * @throws RuntimeException
	 * @throws IOException 
	 */
	public static void deleteFile(String path, String flag) throws IOException {
		File file = FileUtil.getFile(path,flag);
		if (file!=null) {
			FileUtils.deleteQuietly(file);
		}
	}
	
	
	/**
	 * 删除指定文件夹和子文件夹在内所有文件
	 * @throws RuntimeException
	 * @throws IOException 
	 */
	public static void deleteDirectory(String path) throws IOException{
		File file = new File(path);
		if (file!=null) {
			FileUtils.deleteDirectory(file);
		}
	}
}
