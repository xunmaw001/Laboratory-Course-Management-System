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


import com.dao.JiaoshikebiaoDao;
import com.entity.JiaoshikebiaoEntity;
import com.service.JiaoshikebiaoService;
import com.entity.vo.JiaoshikebiaoVO;
import com.entity.view.JiaoshikebiaoView;

@Service("jiaoshikebiaoService")
public class JiaoshikebiaoServiceImpl extends ServiceImpl<JiaoshikebiaoDao, JiaoshikebiaoEntity> implements JiaoshikebiaoService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiaoshikebiaoEntity> page = this.selectPage(
                new Query<JiaoshikebiaoEntity>(params).getPage(),
                new EntityWrapper<JiaoshikebiaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiaoshikebiaoEntity> wrapper) {
		  Page<JiaoshikebiaoView> page =new Query<JiaoshikebiaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JiaoshikebiaoVO> selectListVO(Wrapper<JiaoshikebiaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiaoshikebiaoVO selectVO(Wrapper<JiaoshikebiaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiaoshikebiaoView> selectListView(Wrapper<JiaoshikebiaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiaoshikebiaoView selectView(Wrapper<JiaoshikebiaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
