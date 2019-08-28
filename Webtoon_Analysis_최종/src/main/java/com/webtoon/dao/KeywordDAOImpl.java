package com.webtoon.dao;

import java.util.List;

import javax.inject.Inject;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webtoon.vo.KeywordVO;
 
@Repository
public class KeywordDAOImpl implements KeywordDAO {
 
	@Autowired
    SqlSession sqlSession;
    
    private static final String Namespace = "com.webtoon.mapper.keywordMapper";
    
    @Override
    public List<KeywordVO> selectKeyword() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectKeyword");
    }
 
}

