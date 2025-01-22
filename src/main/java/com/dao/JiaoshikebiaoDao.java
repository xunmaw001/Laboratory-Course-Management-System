package com.dao;

import com.entity.JiaoshikebiaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiaoshikebiaoVO;
import com.entity.view.JiaoshikebiaoView;


/**
 * 教师课表
 * 
 * @author 
 * @email 
 * @date 2022-04-26 17:52:15
 */
public interface JiaoshikebiaoDao extends BaseMapper<JiaoshikebiaoEntity> {
	
	List<JiaoshikebiaoVO> selectListVO(@Param("ew") Wrapper<JiaoshikebiaoEntity> wrapper);
	
	JiaoshikebiaoVO selectVO(@Param("ew") Wrapper<JiaoshikebiaoEntity> wrapper);
	
	List<JiaoshikebiaoView> selectListView(@Param("ew") Wrapper<JiaoshikebiaoEntity> wrapper);

	List<JiaoshikebiaoView> selectListView(Pagination page,@Param("ew") Wrapper<JiaoshikebiaoEntity> wrapper);
	
	JiaoshikebiaoView selectView(@Param("ew") Wrapper<JiaoshikebiaoEntity> wrapper);
	

}
