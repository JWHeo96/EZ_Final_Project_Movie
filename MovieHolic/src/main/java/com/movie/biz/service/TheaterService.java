package com.movie.biz.service;

import java.util.List;

import com.movie.biz.dto.TheaterVO;

public interface TheaterService {

	List<TheaterVO> getTheaterLocal();
	
	List<TheaterVO> getTheaterList(String local); 
}
