package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JieyongjiluEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JieyongjiluVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JieyongjiluView;


/**
 * 借用记录
 *
 * @author 
 * @email 
 * @date 2022-04-26 17:52:15
 */
public interface JieyongjiluService extends IService<JieyongjiluEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JieyongjiluVO> selectListVO(Wrapper<JieyongjiluEntity> wrapper);
   	
   	JieyongjiluVO selectVO(@Param("ew") Wrapper<JieyongjiluEntity> wrapper);
   	
   	List<JieyongjiluView> selectListView(Wrapper<JieyongjiluEntity> wrapper);
   	
   	JieyongjiluView selectView(@Param("ew") Wrapper<JieyongjiluEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JieyongjiluEntity> wrapper);
   	

}

