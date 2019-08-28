package com.webtoon.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webtoon.dao.SummaryDAO;
import com.webtoon.vo.SummaryVO;

@Service
public class SummaryServiceImpl implements SummaryService {
	
	@Autowired
    SummaryDAO dao;
    
    @Override
    public List<SummaryVO> selectSummary() throws Exception {
 
        return dao.selectSummary();
    }
 
}
