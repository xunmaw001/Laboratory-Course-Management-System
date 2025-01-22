package com.dao;

import com.entity.JieyongjiluEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JieyongjiluVO;
import com.entity.view.JieyongjiluView;


/**
 * 借用记录
 * 
 * @author 
 * @email 
 * @date 2022-04-26 17:52:15
 */
public interface JieyongjiluDao extends BaseMapper<JieyongjiluEntity> {
	
	List<JieyongjiluVO> selectListVO(@Param("ew") Wrapper<JieyongjiluEntity> wrapper);
	
	JieyongjiluVO selectVO(@Param("ew") Wrapper<JieyongjiluEntity> wrapper);
	
	List<JieyongjiluView> selectListView(@Param("ew") Wrapper<JieyongjiluEntity> wrapper);

	List<JieyongjiluView> selectListView(Pagination page,@Param("ew") Wrapper<JieyongjiluEntity> wrapper);
	
	JieyongjiluView selectView(@Param("ew") Wrapper<JieyongjiluEntity> wrapper);
	

}
