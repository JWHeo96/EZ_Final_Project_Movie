package com.movie.biz.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.movie.biz.dto.TheaterVO;

@Repository
public class TheaterDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<TheaterVO> getTheaterLocal() {
		System.out.println(mybatis.selectList("TheaterMapper.getTheaterLocal"));
		return mybatis.selectList("TheaterMapper.getTheaterLocal");
	}
	
	public List<TheaterVO> getTheaterList(String local) {
		return mybatis.selectList("TheaterMapper.getTheaterList", local);
	}
}
