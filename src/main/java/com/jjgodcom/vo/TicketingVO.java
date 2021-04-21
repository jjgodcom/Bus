package com.jjgodcom.vo;

import lombok.Data;

@Data
public class TicketingVO {
	private int ticketing_number;		// 고유번호
	private String email;				// 이메일
	private String departure_area; 		// 출발지
	private String destination;			// 도착지
	private String number_of_tickets;	// 티켓수
	private String seat_number;			// 좌석번호
	private String departure_date;		// 출발날짜시간
	private int ticketing_status; 		// 예매상태 : 1 취소상태 : 0
	private String bus_name;			// 버스 이름(테이블명)
	private String area_name;			// 이건뭐꼬
}



