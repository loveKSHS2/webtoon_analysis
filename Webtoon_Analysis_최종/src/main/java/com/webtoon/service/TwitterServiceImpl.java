package com.webtoon.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webtoon.dao.TwitterDAO;
import com.webtoon.vo.TwitterVO;

@Service
public class TwitterServiceImpl implements TwitterService {
	
	@Autowired
	TwitterDAO dao;
    
    @Override
    public List<TwitterVO> selectTwitter() throws Exception {
 
        return dao.selectTwitter();
    }
 
}
