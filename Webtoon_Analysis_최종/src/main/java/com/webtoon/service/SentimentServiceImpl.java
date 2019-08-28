package com.webtoon.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import com.webtoon.dao.SentimentDAO;
import com.webtoon.vo.SentimentVO;
 
@Service
public class SentimentServiceImpl implements SentimentService {
 
	@Autowired
	SentimentDAO dao;
    
    @Override
    public List<SentimentVO> selectSentiment() throws Exception {
 
        return dao.selectSentiment();
    }
 
}



