package com.entity.view;

import com.entity.JiaoshikebiaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 教师课表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-26 17:52:15
 */
@TableName("jiaoshikebiao")
public class JiaoshikebiaoView  extends JiaoshikebiaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JiaoshikebiaoView(){
	}
 
 	public JiaoshikebiaoView(JiaoshikebiaoEntity jiaoshikebiaoEntity){
 	try {
			BeanUtils.copyProperties(this, jiaoshikebiaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
