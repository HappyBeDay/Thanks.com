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
	private int abanimalCode;	
	private String abthumbPic;		
	private Date findDate;		
	private String findLoc;			
	private int breedCode;		
	private int animalTypeCode;	
	private float abAge;			
	private float abWeight;		
	private String noticeNum;		
	private Date noticeStartDate;	
	private Date noticeEndDate;	
	private String abPic;			
	private String abState;			
	private String abFeat;			
	private String abComment;		
	private int colorGroupCode;	
	private int sexCode;			
	private int shelterCode;		
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