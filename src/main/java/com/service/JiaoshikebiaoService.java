package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiaoshikebiaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiaoshikebiaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiaoshikebiaoView;


/**
 * 教师课表
 *
 * @author 
 * @email 
 * @date 2022-04-26 17:52:15
 */
public interface JiaoshikebiaoService extends IService<JiaoshikebiaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiaoshikebiaoVO> selectListVO(Wrapper<JiaoshikebiaoEntity> wrapper);
   	
   	JiaoshikebiaoVO selectVO(@Param("ew") Wrapper<JiaoshikebiaoEntity> wrapper);
   	
   	List<JiaoshikebiaoView> selectListView(Wrapper<JiaoshikebiaoEntity> wrapper);
   	
   	JiaoshikebiaoView selectView(@Param("ew") Wrapper<JiaoshikebiaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiaoshikebiaoEntity> wrapper);
   	

}

