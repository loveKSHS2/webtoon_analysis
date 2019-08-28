package com.webtoon.dao;

import java.util.List;

import com.webtoon.vo.KeywordVO;

public interface KeywordDAO {
	public List<KeywordVO> selectKeyword() throws Exception;

}
