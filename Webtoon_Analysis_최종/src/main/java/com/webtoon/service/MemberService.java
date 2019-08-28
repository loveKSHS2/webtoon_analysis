package com.webtoon.service;

import java.util.List;

import com.webtoon.vo.MemberVO;
 
public interface MemberService {
    
    public List<MemberVO> selectMember() throws Exception;
}

