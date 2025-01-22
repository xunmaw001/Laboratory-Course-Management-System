package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.JieyongjiluDao;
import com.entity.JieyongjiluEntity;
import com.service.JieyongjiluService;
import com.entity.vo.JieyongjiluVO;
import com.entity.view.JieyongjiluView;

@Service("jieyongjiluService")
public class JieyongjiluServiceImpl extends ServiceImpl<JieyongjiluDao, JieyongjiluEntity> implements JieyongjiluService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JieyongjiluEntity> page = this.selectPage(
                new Query<JieyongjiluEntity>(params).getPage(),
                new EntityWrapper<JieyongjiluEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JieyongjiluEntity> wrapper) {
		  Page<JieyongjiluView> page =new Query<JieyongjiluView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JieyongjiluVO> selectListVO(Wrapper<JieyongjiluEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JieyongjiluVO selectVO(Wrapper<JieyongjiluEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JieyongjiluView> selectListView(Wrapper<JieyongjiluEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JieyongjiluView selectView(Wrapper<JieyongjiluEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
