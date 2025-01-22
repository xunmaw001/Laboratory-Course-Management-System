package com.entity.vo;

import com.entity.JieyongjiluEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 借用记录
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-04-26 17:52:15
 */
public class JieyongjiluVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 设备图片
	 */
	
	private String shebeitupian;
		
	/**
	 * 设备数量
	 */
	
	private Integer shebeishuliang;
		
	/**
	 * 操作日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date caozuoriqi;
		
	/**
	 * 信息说明
	 */
	
	private String xinxishuoming;
				
	
	/**
	 * 设置：设备图片
	 */
	 
	public void setShebeitupian(String shebeitupian) {
		this.shebeitupian = shebeitupian;
	}
	
	/**
	 * 获取：设备图片
	 */
	public String getShebeitupian() {
		return shebeitupian;
	}
				
	
	/**
	 * 设置：设备数量
	 */
	 
	public void setShebeishuliang(Integer shebeishuliang) {
		this.shebeishuliang = shebeishuliang;
	}
	
	/**
	 * 获取：设备数量
	 */
	public Integer getShebeishuliang() {
		return shebeishuliang;
	}
				
	
	/**
	 * 设置：操作日期
	 */
	 
	public void setCaozuoriqi(Date caozuoriqi) {
		this.caozuoriqi = caozuoriqi;
	}
	
	/**
	 * 获取：操作日期
	 */
	public Date getCaozuoriqi() {
		return caozuoriqi;
	}
				
	
	/**
	 * 设置：信息说明
	 */
	 
	public void setXinxishuoming(String xinxishuoming) {
		this.xinxishuoming = xinxishuoming;
	}
	
	/**
	 * 获取：信息说明
	 */
	public String getXinxishuoming() {
		return xinxishuoming;
	}
			
}
