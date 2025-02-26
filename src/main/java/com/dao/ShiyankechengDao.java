package com.dao;

import com.entity.ShiyankechengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShiyankechengVO;
import com.entity.view.ShiyankechengView;


/**
 * 实验课程
 * 
 * @author 
 * @email 
 * @date 2022-04-26 17:52:15
 */
public interface ShiyankechengDao extends BaseMapper<ShiyankechengEntity> {
	
	List<ShiyankechengVO> selectListVO(@Param("ew") Wrapper<ShiyankechengEntity> wrapper);
	
	ShiyankechengVO selectVO(@Param("ew") Wrapper<ShiyankechengEntity> wrapper);
	
	List<ShiyankechengView> selectListView(@Param("ew") Wrapper<ShiyankechengEntity> wrapper);

	List<ShiyankechengView> selectListView(Pagination page,@Param("ew") Wrapper<ShiyankechengEntity> wrapper);
	
	ShiyankechengView selectView(@Param("ew") Wrapper<ShiyankechengEntity> wrapper);
	

}
