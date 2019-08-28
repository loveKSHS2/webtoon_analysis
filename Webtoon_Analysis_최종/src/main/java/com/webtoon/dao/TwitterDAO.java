package com.webtoon.dao;

import java.util.List;

import com.webtoon.vo.TwitterVO;

public interface TwitterDAO {
	
	public List<TwitterVO> selectTwitter() throws Exception;
}
