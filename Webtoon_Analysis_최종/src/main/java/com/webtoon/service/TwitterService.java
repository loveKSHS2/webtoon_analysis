package com.webtoon.service;

import java.util.List;

import com.webtoon.vo.TwitterVO;

public interface TwitterService {
	public List<TwitterVO> selectTwitter() throws Exception;
}
