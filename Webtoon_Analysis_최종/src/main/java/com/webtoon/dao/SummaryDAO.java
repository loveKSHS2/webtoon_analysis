package com.webtoon.dao;

import java.util.List;

import com.webtoon.vo.SummaryVO;

public interface SummaryDAO {
	
	public List<SummaryVO> selectSummary() throws Exception;
}
