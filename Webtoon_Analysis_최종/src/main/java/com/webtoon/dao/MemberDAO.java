package com.webtoon.dao;

import java.util.List;

import com.webtoon.vo.MemberVO;
 
public interface MemberDAO {
    
    public List<MemberVO> selectMember() throws Exception;
}
