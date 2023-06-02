package com.movie.biz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movie.biz.dao.TheaterDAO;
import com.movie.biz.dto.TheaterVO;

@Service
public class TheaterServiceImpl implements TheaterService {

	@Autowired
	private TheaterDAO theaterDao;
	
	@Override
	public List<TheaterVO> getTheaterLocal() {
		
		return theaterDao.getTheaterLocal();
	}

	@Override
	public List<TheaterVO> getTheaterList(String local) {
		return theaterDao.getTheaterList(local);
	}

}
