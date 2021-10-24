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
public class SidoVO {
	private int sidoCode; 
	private String sidoCodeName;
	
}

/*
	"SIDOCODE" NUMBER(7,0) NOT NULL ENABLE, 
	"SIDOCODENAME" NVARCHAR2(50) NOT NULL ENABLE
*/
