package com.jjgodcom.vo;

import lombok.Data;

@Data
public class BoardVO {
	private int seq;
    private String email;
    private String content;
    private String registration_date;
    private String answer_content;
    private String answer_date;
}

