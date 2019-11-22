package com.zhangjiawei.dao;

import java.util.List;

import com.zhangjiawei.entity.Category;

public interface CategoryMapper {

	/**
	 * 获取分类
	 * @param chnId
	 * @return
	 */
	List<Category> listByChannelId(int chnId);
	

}
