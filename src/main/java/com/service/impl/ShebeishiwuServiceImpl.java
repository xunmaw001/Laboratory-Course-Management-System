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


import com.dao.ShebeishiwuDao;
import com.entity.ShebeishiwuEntity;
import com.service.ShebeishiwuService;
import com.entity.vo.ShebeishiwuVO;
import com.entity.view.ShebeishiwuView;

@Service("shebeishiwuService")
public class ShebeishiwuServiceImpl extends ServiceImpl<ShebeishiwuDao, ShebeishiwuEntity> implements ShebeishiwuService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShebeishiwuEntity> page = this.selectPage(
                new Query<ShebeishiwuEntity>(params).getPage(),
                new EntityWrapper<ShebeishiwuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShebeishiwuEntity> wrapper) {
		  Page<ShebeishiwuView> page =new Query<ShebeishiwuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShebeishiwuVO> selectListVO(Wrapper<ShebeishiwuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShebeishiwuVO selectVO(Wrapper<ShebeishiwuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShebeishiwuView> selectListView(Wrapper<ShebeishiwuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShebeishiwuView selectView(Wrapper<ShebeishiwuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
