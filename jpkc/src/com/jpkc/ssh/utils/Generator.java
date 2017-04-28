package com.jpkc.ssh.utils;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;

public class Generator {
	private String IdentifyingCode;
	private BufferedImage image;
	private String [] string = {"0","1","2","3","4","5","6","7","8","9",
			"A","B","C","D","E","F","G",
			"H","I","J","K","L","M","N",
			"O","P","Q","R","S","T",
			"U","V","W","X","Y","Z"};
	private String [] fontName = {"宋体","黑体","微软雅黑"};
	
	public static void main(String[] args) {
		new Generator();
	}
	
	
	public Generator(){
		String [] randomString = getRandomString(string, 4);
		IdentifyingCode = toString(randomString);
		image = getBufferedImage(100, 22, randomString, fontName);
		System.out.println(IdentifyingCode);
	}
	
	/**
	 * 生成随机字符数组
	 * @param str 字符数组
	 * @param num 长度
	 * @return 返回一个根据给定的字符数组随机产生的指定长度的字符数组
	 */
	private String[] getRandomString(String []str,int num){
		String []string = new String[4];
		for(int i = 0;i<num;i++){
			int index = (int)(Math.random()*str.length);
			string[i] = str[index];
		}
		return string;
	}
	
	private BufferedImage getBufferedImage(int width, int height, String[] strs, String [] fontNames){
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		Graphics2D g = (Graphics2D)image.getGraphics();
		g.setColor(getRandColor(200,250));     
		g.fillRect(0, 0, width, height);
		Random random = new Random();
		//绘制字符
		for(int i = 0;i<strs.length;i++){
			g.setFont(new Font(fontNames[(int)(Math.random()*fontNames.length)],Font.PLAIN,20));
			g.setColor(new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110)));  
			g.drawString(strs[i], 5+i*25, 18);
		}
		g.setColor(getRandColor(160,200));
		//绘制随机线
		for (int i=0;i<25;i++){   
			g.setColor(new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110)));  
			int x = random.nextInt(width - 1);
			int y = random.nextInt(height - 1);     
			int xl = random.nextInt(6) + 1;     
			int yl = random.nextInt(12) + 1;     
			g.drawLine(x,y,x + xl,y + yl);     
		}     
		
		//从另一方向画随机线     
		for (int i = 0;i < 25;i++){
			g.setColor(new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110))); 
			int x = random.nextInt(width - 1);     
			int y = random.nextInt(height - 1);     
			int xl = random.nextInt(12) + 1;     
			int yl = random.nextInt(6) + 1;     
			g.drawLine(x,y,x - xl,y - yl);     
		}     
		g.dispose();
		return image;
	}
	
	private String toString(String[] strs){
		String string = new String();
		for(int i = 0;i<strs.length;i++){
			string += strs[i];
		}
		return string;
	}
	
	private Color getRandColor(int fc,int bc)   
    {     
        Random random = new Random();     
        if(fc>255) fc=255;     
        if(bc>255) bc=255;     
        int r=fc+random.nextInt(bc-fc);     
        int g=fc+random.nextInt(bc-fc);     
        int b=fc+random.nextInt(bc-fc);     
        return new Color(r,g,b);     
    } 
	
	public BufferedImage getImage() {
		return image;
	}

	public String getIdentifyingCode() {
		return IdentifyingCode;
	}
}    