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
public class BoardListVO {
	private int boardCode;	
	private int memberCode;		
	private String boardTitle;		
	private String boardContent;			
	private String boardPic;		
	private Date boardDate;	
	private int boardHit;			
	private int boardLike;		
	private int boardTypeCode;		
	private int boardNum;	
	private int replyGroupCode;	
}

