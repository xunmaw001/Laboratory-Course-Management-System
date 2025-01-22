package com.entity.vo;

import com.entity.GuihaijiluEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 归还记录
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-04-26 17:52:15
 */
public class GuihaijiluVO  implements Serializable {
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
	 * 归还日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date guihairiqi;
		
	/**
	 * 归还备注
	 */
	
	private String guihaibeizhu;
				
	
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
	 * 设置：归还日期
	 */
	 
	public void setGuihairiqi(Date guihairiqi) {
		this.guihairiqi = guihairiqi;
	}
	
	/**
	 * 获取：归还日期
	 */
	public Date getGuihairiqi() {
		return guihairiqi;
	}
				
	
	/**
	 * 设置：归还备注
	 */
	 
	public void setGuihaibeizhu(String guihaibeizhu) {
		this.guihaibeizhu = guihaibeizhu;
	}
	
	/**
	 * 获取：归还备注
	 */
	public String getGuihaibeizhu() {
		return guihaibeizhu;
	}
			
}
