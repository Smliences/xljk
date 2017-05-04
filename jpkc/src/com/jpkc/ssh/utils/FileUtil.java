package com.jpkc.ssh.utils;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;


/**
 * 
 * @ClassName: FileUtil 
 * @Description: 文件操作的工具类
 * @author MJ
 * @date 2017-5-4 下午2:32:06
 *
 */
public class FileUtil {

	public static void save(File inputFile, String path) throws IOException {
		File file = new File(path);
		FileUtils.copyFile(inputFile, file);
	}

	public static File getFile(String path) {
		return new File(path);
	}

	public static void delete(String path) {
		FileUtils.deleteQuietly(new File(path));
	}
}
