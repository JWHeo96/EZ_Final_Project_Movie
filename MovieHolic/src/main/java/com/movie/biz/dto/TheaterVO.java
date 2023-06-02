package com.movie.biz.dto;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TheaterVO {	
	private int numb;	// 극장 번호
	private String name;	// 극장 이름
	private String local;	// 권역
	private String address;	// 주소
	private int room;	// 총 관 수
	private int seat;	// 총 좌석 수
	private Date regdate;
	private String useyn;
}
