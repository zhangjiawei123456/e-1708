package com.zhangjiawei.service;

import javax.validation.Valid;

import com.github.pagehelper.PageInfo;
import com.zhangjiawei.entity.Link;
/**
 * 
 * @author zhangjiawei
 *
 */
public interface LinkService {

	int add(Link link);
	PageInfo list(int page);
	int delete(int id);
	Link get(int id);
	int update( Link link);

}
