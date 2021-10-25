package sist.com.vo;

import java.sql.Date;

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
public class AbandonedAnimalVO {
	private int abanimalcode;	
	private String abthumbpic;		
	private Date finddate;		
	private String findloc;			
	private int breedcode;		
	private int animaltypecode;	
	private float abage;			
	private float abweight;		
	private String noticenum;		
	private Date noticestartdate;	
	private Date noticeenddate;	
	private String abpic;			
	private String abstate;			
	private String abfeat;			
	private String abcomment;		
	private int colorgroupcode;	
	private int sexcode;			
	private int sheltercode;		
}

/*
ABANIMALCODE	NUMBER(20,0)
ABTHUMBPIC		URITYPE
FINDDATE		DATE
FINDLOC			NVARCHAR2(100 CHAR)
BREEDCODE		NUMBER(7,0)
ANIMALTYPECODE	NUMBER(7,0)
ABAGE			NUMBER(7,2)
ABWEIGHT		NUMBER(7,2)
NOTICENUM		NVARCHAR2(30 CHAR)
NOTICESTARTDATE	DATE
NOTICEENDDATE	DATE
ABPIC			URITYPE
ABSTATE			NVARCHAR2(7 CHAR)
ABFEAT			NVARCHAR2(100 CHAR)
ABCOMMENT		NVARCHAR2(100 CHAR)
COLORGROUPCODE	NUMBER
SEXCODE			NUMBER(1,0)
SHELTERCODE		NUMBER(7,0)

*/