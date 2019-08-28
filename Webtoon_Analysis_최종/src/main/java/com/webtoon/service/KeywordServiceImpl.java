package com.webtoon.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import com.webtoon.dao.KeywordDAO;
import com.webtoon.vo.KeywordVO;
 
@Service
public class KeywordServiceImpl implements KeywordService {
 
	@Autowired
	KeywordDAO dao;
    
    @Override
    public List<KeywordVO> selectKeyword() throws Exception {
 
        return dao.selectKeyword();
    }
 
}



