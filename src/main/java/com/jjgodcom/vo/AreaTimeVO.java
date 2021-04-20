package com.jjgodcom.vo;

import lombok.Data;

@Data
public class AreaTimeVO {
    private String departure_time;
    private String departure_area;
    private String destination;
    private int ticket_price;
    private int remaining_seats;
    private int total_seats;
    private String bus_name;
}
