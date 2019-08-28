package com.webtoon.dao;

import java.util.List;

import javax.inject.Inject;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webtoon.vo.SentimentVO;
 
@Repository
public class SentimentDAOImpl implements SentimentDAO {
 
	@Autowired
    SqlSession sqlSession;
    
    private static final String Namespace = "com.webtoon.mapper.sentimentMapper";
    
    @Override
    public List<SentimentVO> selectSentiment() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectSentiment");
    }
 
}
