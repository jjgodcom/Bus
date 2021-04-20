package com.jjgodcom.vo;

import lombok.Data;

@Data
public class SeatVO {
    private String bus_name;
    private String email;
    private int seat_number;
    private int available_seat;
}
