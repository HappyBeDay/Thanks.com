package sist.com.vo;

import java.sql.Date;
import java.sql.Timestamp;

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
public class ShelterVO {
	private int shelterCode ;
	private String shelterName ;
	private String mgmtAgencyName ;
	private String shelterType ;
	private Date shelterDesigDate ;
	private Timestamp weekdayStartTime ;
	private Timestamp weekdayEndTime ;
	private Timestamp weekdayAdoptStarTtime ;
	private Timestamp weekdayAdoptEndTime ;
	private Timestamp weekendStartTime ;
	private Timestamp weekendEndTime ;
	private Timestamp weekendAdoptStartTime ;
	private Timestamp weekendAdoptEndTime ;
	private String holiday ;
	private int vetCnt ;
	private int specMgrCnt ;
	private int drOfficent ;
	private int careEmCnt ;
	private int quarantineRmCnt ;
	private int foodStrgRmCnt ;
	private int vehicleCnt ;
	private int tel ;
	private Date dataDate ;
	private int addressCode ;
	
}

/*
	"SHELTERCODE" NUMBER(7,0) NOT NULL ENABLE, 
	"SHELTERNAME" NVARCHAR2(50) NOT NULL ENABLE, 
	"MGMTAGENCYNAME" NVARCHAR2(20) NOT NULL ENABLE, 
	"SHELTERTYPE" NVARCHAR2(10) NOT NULL ENABLE, 
	"SHELTERDESIGDATE" DATE NOT NULL ENABLE, 
	"WEEKDAYSTARTTIME" TIMESTAMP (6) NOT NULL ENABLE, 
	"WEEKDAYENDTIME" TIMESTAMP (6) NOT NULL ENABLE, 
	"WEEKDAYADOPTSTARTTIME" TIMESTAMP (6), 
	"WEEKDAYADOPTENDTIME" TIMESTAMP (6), 
	"WEEKENDSTARTTIME" TIMESTAMP (6), 
	"WEEKENDENDTIME" TIMESTAMP (6), 
	"WEEKENDADOPTSTARTTIME" TIMESTAMP (6), 
	"WEEKENDADOPTENDTIME" TIMESTAMP (6), 
	"HOLIDAY" NVARCHAR2(20) NOT NULL ENABLE, 
	"VETCNT" NUMBER(5,0) NOT NULL ENABLE, 
	"SPECMGRCNT" NUMBER(5,0) NOT NULL ENABLE, 
	"DROFFICECNT" NUMBER(5,0), 
	"CARERMCNT" NUMBER(5,0), 
	"QUARANTINERMCNT" NUMBER(5,0), 
	"FOODSTRGRMCNT" NUMBER(5,0), 
	"VEHICLECNT" NUMBER(5,0), 
	"TEL" NUMBER(15,0) NOT NULL ENABLE, 
	"DATADATE" DATE NOT NULL ENABLE, 
	"ADDRESSCODE" NUMBER(7,0),  

 */
