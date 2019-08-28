package com.webtoon.service;

import java.util.List;

import com.webtoon.vo.SummaryVO;

public interface SummaryService {
	public List<SummaryVO> selectSummary() throws Exception;
}
