package com.webtoon.dao;

import java.util.List;

import com.webtoon.vo.SentimentVO;

public interface SentimentDAO {
	
	public List<SentimentVO> selectSentiment() throws Exception;

}
