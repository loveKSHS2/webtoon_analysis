package com.webtoon.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webtoon.vo.SummaryKeywordVO;

@Repository
public class SummaryKeywordDAOImpl implements SummaryKeywordDAO {
	
	@Autowired
    SqlSession sqlSession;
	
	private static final String Namespace = "com.webtoon.mapper.summaryKeywordMapper";
	
	@Override
    public List<SummaryKeywordVO> selectSummaryKeyword() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectSummaryKeyword");
    }
	

}
