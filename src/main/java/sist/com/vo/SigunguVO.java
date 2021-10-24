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
public class SigunguVO {
	private int sigunguCode;
	private String sigunguCodeName;
	private int sidoCode;
}
/*
  	"SIGUNGUCODE" NUMBER(7,0) NOT NULL ENABLE, 
	"SIGUNGUCODENAME" NVARCHAR2(50) NOT NULL ENABLE, 
	"SIDOCODE" NUMBER(7,0) NOT NULL ENABLE, 
*/