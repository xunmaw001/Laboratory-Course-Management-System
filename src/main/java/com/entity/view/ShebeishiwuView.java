package com.entity.view;

import com.entity.ShebeishiwuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 设备事务
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-26 17:52:15
 */
@TableName("shebeishiwu")
public class ShebeishiwuView  extends ShebeishiwuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShebeishiwuView(){
	}
 
 	public ShebeishiwuView(ShebeishiwuEntity shebeishiwuEntity){
 	try {
			BeanUtils.copyProperties(this, shebeishiwuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
