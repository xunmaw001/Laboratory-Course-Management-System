package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 设备事务
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2022-04-26 17:52:15
 */
@TableName("shebeishiwu")
public class ShebeishiwuEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ShebeishiwuEntity() {
		
	}
	
	public ShebeishiwuEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 设备名称
	 */
					
	private String shebeimingcheng;
	
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
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date shiwuriqi;
	
	/**
	 * 事务内容
	 */
					
	private String shiwuneirong;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：设备名称
	 */
	public void setShebeimingcheng(String shebeimingcheng) {
		this.shebeimingcheng = shebeimingcheng;
	}
	/**
	 * 获取：设备名称
	 */
	public String getShebeimingcheng() {
		return shebeimingcheng;
	}
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
