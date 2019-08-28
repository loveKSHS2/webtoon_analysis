package com.webtoon.dao;

import java.util.List;

import javax.inject.Inject;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webtoon.vo.TwitterVO;
 
@Repository
public class TwitterDAOImpl implements TwitterDAO {
 
	@Autowired
    SqlSession sqlSession;
    
    private static final String Namespace = "com.webtoon.mapper.twitterMapper";
    
    @Override
    public List<TwitterVO> selectTwitter() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectTwitter");
    }
 
}

