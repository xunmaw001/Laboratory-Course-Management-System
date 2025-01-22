package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShebeishiwuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShebeishiwuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShebeishiwuView;


/**
 * 设备事务
 *
 * @author 
 * @email 
 * @date 2022-04-26 17:52:15
 */
public interface ShebeishiwuService extends IService<ShebeishiwuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShebeishiwuVO> selectListVO(Wrapper<ShebeishiwuEntity> wrapper);
   	
   	ShebeishiwuVO selectVO(@Param("ew") Wrapper<ShebeishiwuEntity> wrapper);
   	
   	List<ShebeishiwuView> selectListView(Wrapper<ShebeishiwuEntity> wrapper);
   	
   	ShebeishiwuView selectView(@Param("ew") Wrapper<ShebeishiwuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShebeishiwuEntity> wrapper);
   	

}

