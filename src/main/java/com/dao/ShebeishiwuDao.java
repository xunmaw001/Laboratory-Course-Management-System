package com.dao;

import com.entity.ShebeishiwuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShebeishiwuVO;
import com.entity.view.ShebeishiwuView;


/**
 * 设备事务
 * 
 * @author 
 * @email 
 * @date 2022-04-26 17:52:15
 */
public interface ShebeishiwuDao extends BaseMapper<ShebeishiwuEntity> {
	
	List<ShebeishiwuVO> selectListVO(@Param("ew") Wrapper<ShebeishiwuEntity> wrapper);
	
	ShebeishiwuVO selectVO(@Param("ew") Wrapper<ShebeishiwuEntity> wrapper);
	
	List<ShebeishiwuView> selectListView(@Param("ew") Wrapper<ShebeishiwuEntity> wrapper);

	List<ShebeishiwuView> selectListView(Pagination page,@Param("ew") Wrapper<ShebeishiwuEntity> wrapper);
	
	ShebeishiwuView selectView(@Param("ew") Wrapper<ShebeishiwuEntity> wrapper);
	

}
