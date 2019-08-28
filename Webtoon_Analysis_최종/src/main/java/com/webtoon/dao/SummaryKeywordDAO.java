package com.webtoon.dao;

import java.util.List;

import com.webtoon.vo.SummaryKeywordVO;

public interface SummaryKeywordDAO {
	
	public List<SummaryKeywordVO> selectSummaryKeyword() throws Exception;

}
