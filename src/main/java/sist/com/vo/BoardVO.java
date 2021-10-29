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
public class BoardVO {
	public int boardCode;
	public int memberCode;
	public String boardTitle;
	public String boardContent;
	public String boardPic;
	public String boardDate;
	public String boardHit;
	public String boardLike;
	public String boardTypeCode;
	public String boardNum;
	public String replyGroupocde;

	
/*	BOARDCODE	NUMBER(7,0)
	MEMBERCODE	NUMBER(7,0)
	BOARDTITLE	NVARCHAR2(20 CHAR)
	BOARDCONTENT	NVARCHAR2(100 CHAR)
	BOARDPIC	URITYPE
	BOARDDATE	DATE
	BOARDHIT	NUMBER(7,0)
	BOARDLIKE	NUMBER(7,0)
	BOARDTYPECODE	NUMBER(7,0)
	BOARDNUM	NUMBER(7,0)
	REPLYGROUPCODE	NUMBER(7,0)*/
	
}
