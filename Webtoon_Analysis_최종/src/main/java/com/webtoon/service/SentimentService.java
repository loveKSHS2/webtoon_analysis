package com.webtoon.service;

import java.util.List;

import com.webtoon.vo.SentimentVO;
 
public interface SentimentService {
    
    public List<SentimentVO> selectSentiment() throws Exception;
}

