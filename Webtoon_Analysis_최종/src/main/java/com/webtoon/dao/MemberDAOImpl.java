package com.webtoon.dao;

import java.util.List;

import javax.inject.Inject;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webtoon.vo.MemberVO;
 
@Repository
public class MemberDAOImpl implements MemberDAO {
 
	@Autowired
    SqlSession sqlSession;
    
    private static final String Namespace = "com.webtoon.mapper.memberMapper";
    
    @Override
    public List<MemberVO> selectMember() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectMember");
    }
 
}

