package com.entity.view;

import com.entity.JieyongjiluEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 借用记录
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-26 17:52:15
 */
@TableName("jieyongjilu")
public class JieyongjiluView  extends JieyongjiluEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JieyongjiluView(){
	}
 
 	public JieyongjiluView(JieyongjiluEntity jieyongjiluEntity){
 	try {
			BeanUtils.copyProperties(this, jieyongjiluEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
