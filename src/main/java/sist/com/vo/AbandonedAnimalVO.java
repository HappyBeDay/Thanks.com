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
	private float abAge;			
	private String color;	
	private long abanimalCode;	
	private String abThumbPic;		
	private Date findDate;		
	private String findLoc;			
	private int breedCode;	
	private int breedTypeCode;
	private Date noticeEndDate;	
	private String noticeNum;		
	private Date noticeStartDate;	
	private String abPic;			
	private int stateCode;
	private String neuter;
	private String sex;			
	private String abFeat;			
	private float abWeight;		
	private long asShelterCode;
}