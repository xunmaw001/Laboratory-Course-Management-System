package com.entity.model;

import com.entity.ShebeishiwuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 设备事务
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-04-26 17:52:15
 */
public class ShebeishiwuModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 设备分类
	 */
	
	private String shebeifenlei;
		
	/**
	 * 设备数量
	 */
	
	private Integer shebeishuliang;
		
	/**
	 * 事务类型
	 */
	
	private String shiwuleixing;
		
	/**
	 * 事务数量
	 */
	
	private Integer shiwushuliang;
		
	/**
	 * 事务日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date shiwuriqi;
		
	/**
	 * 事务内容
	 */
	
	private String shiwuneirong;
				
	
	/**
	 * 设置：设备分类
	 */
	 
	public void setShebeifenlei(String shebeifenlei) {
		this.shebeifenlei = shebeifenlei;
	}
	
	/**
	 * 获取：设备分类
	 */
	public String getShebeifenlei() {
		return shebeifenlei;
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
	 * 设置：事务类型
	 */
	 
	public void setShiwuleixing(String shiwuleixing) {
		this.shiwuleixing = shiwuleixing;
	}
	
	/**
	 * 获取：事务类型
	 */
	public String getShiwuleixing() {
		return shiwuleixing;
	}
				
	
	/**
	 * 设置：事务数量
	 */
	 
	public void setShiwushuliang(Integer shiwushuliang) {
		this.shiwushuliang = shiwushuliang;
	}
	
	/**
	 * 获取：事务数量
	 */
	public Integer getShiwushuliang() {
		return shiwushuliang;
	}
				
	
	/**
	 * 设置：事务日期
	 */
	 
	public void setShiwuriqi(Date shiwuriqi) {
		this.shiwuriqi = shiwuriqi;
	}
	
	/**
	 * 获取：事务日期
	 */
	public Date getShiwuriqi() {
		return shiwuriqi;
	}
				
	
	/**
	 * 设置：事务内容
	 */
	 
	public void setShiwuneirong(String shiwuneirong) {
		this.shiwuneirong = shiwuneirong;
	}
	
	/**
	 * 获取：事务内容
	 */
	public String getShiwuneirong() {
		return shiwuneirong;
	}
			
}
