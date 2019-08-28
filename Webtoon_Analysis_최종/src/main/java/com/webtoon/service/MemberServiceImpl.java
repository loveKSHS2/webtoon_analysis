package com.webtoon.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import com.webtoon.dao.MemberDAO;
import com.webtoon.vo.MemberVO;
 
@Service
public class MemberServiceImpl implements MemberService {
 
	@Autowired
    MemberDAO dao;
    
    @Override
    public List<MemberVO> selectMember() throws Exception {
 
        return dao.selectMember();
    }
 
}



