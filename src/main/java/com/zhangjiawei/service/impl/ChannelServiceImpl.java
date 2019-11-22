package com.zhangjiawei.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhangjiawei.dao.ChannelMapper;
import com.zhangjiawei.entity.Channel;
import com.zhangjiawei.service.ChannelService;

/**
 * 
 * @author zhangjiawei
 *
 */

@Service
public class ChannelServiceImpl  implements ChannelService{
	
	@Autowired
	ChannelMapper channelMapper;

	@Override
	public List<Channel> list() {
		// TODO Auto-generated method stub
		return channelMapper.list();
	}

}
