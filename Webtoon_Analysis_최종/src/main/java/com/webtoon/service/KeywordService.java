package com.webtoon.service;

import java.util.List;

import com.webtoon.vo.KeywordVO;

public interface KeywordService {
	public List<KeywordVO> selectKeyword() throws Exception;

}
