package com.webtoon.service;

import java.util.List;

import com.webtoon.vo.SummaryKeywordVO;

public interface SummaryKeywordService {
	
	public List<SummaryKeywordVO> selectSummaryKeyword() throws Exception;

}
