package com.jjgodcom.vo;

import lombok.Data;

@Data
public class MemberVO {
    private String email;
    private String password;
    private String phone;
    private String birthd;
    private int point;
    private String registration_date;
}
