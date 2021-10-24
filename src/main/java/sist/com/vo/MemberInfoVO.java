package sist.com.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class MemberInfoVO {
	private int memberCode;
	private String id;
	private String pw;
	private String name;
	private int tel;
	private String email;
	private int authorizeCode;
	private String date;
	private int petCode;
	private int addressCode;
	
	/*
	"MEMBERCODE" NUMBER(7,0) NOT NULL ENABLE, 
	"ID" NVARCHAR2(20) NOT NULL ENABLE, 
	"PW" NVARCHAR2(50) NOT NULL ENABLE, 
	"NAME" NVARCHAR2(10), 
	"TEL" NUMBER(12,0), 
	"EMAIL" NVARCHAR2(50) NOT NULL ENABLE, 
	"AUTHORIZECODE" NUMBER(1,0) DEFAULT 0 NOT NULL ENABLE, 
	"BIRTH" DATE, 
	"PETCODE" NUMBER(7,0), 
	"ADDRESSCODE" NUMBER(7,0),
	*/ 
}
