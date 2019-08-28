package com.webtoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webtoon.dao.SummaryKeywordDAO;
import com.webtoon.vo.SummaryKeywordVO;

@Service
public class SummaryKeywordServiceImpl implements SummaryKeywordService{
	
	@Autowired
	SummaryKeywordDAO dao;
	
	@Override
    public List<SummaryKeywordVO> selectSummaryKeyword() throws Exception {
 
        return dao.selectSummaryKeyword();
    }

}
