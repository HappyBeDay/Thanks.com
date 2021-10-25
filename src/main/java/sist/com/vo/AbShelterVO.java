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
public class AbShelterVO {
	private int abShelterCode;
	private int sidoCode;
	private int sigunguCode;
	private int abSelterTel;
	private String abSelterAddress;
	private String organize;
	private String managerName;
	private int managerTel;
	private String abselterName;
}                                     
/*
ABSHELTERCODE	NUMBER(15,0)
SIDOCODE		NUMBER(7,0)
SIGUNGUCODE		NUMBER(7,0)
ABSELTERTEL		NUMBER(15,0)
ABSELTERADDRESS	NVARCHAR2(50 CHAR)
ORGANIZE		NVARCHAR2(20 CHAR)
MANAGERNAME		NVARCHAR2(10 CHAR)
MANAGERTEL		NUMBER(15,0)
ABSELTERNAME	NVARCHAR2(20 CHAR)
*/