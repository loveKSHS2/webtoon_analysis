package com.webtoon.dao;

import java.util.List;

import javax.inject.Inject;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webtoon.vo.SummaryVO;
 
@Repository
public class SummaryDAOImpl implements SummaryDAO {
 
	@Autowired
    SqlSession sqlSession;
    
    private static final String Namespace = "com.webtoon.mapper.summaryMapper";
    
    @Override
    public List<SummaryVO> selectSummary() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectSummary");
    }
 
}

