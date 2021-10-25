package sist.com.api.apiEnum;

public enum AbAnimalEnum {
	// dbTable(apiName, tagNames[], requeiredItems, dbColumns) 
	SidoVO("sido", // 시도 
			new String[] { "orgCd", "orgdownNm" }, 
			null,
			new String[] { "sidoCode", "sidoCodeName"} ),
	SigunguVO("sigungu", // 시군구
			new String[] { "orgCd", "orgdownNm", "uprCd" }, 
			new String[] { "upr_cd" },
			new String[] { "sigunguCode", "sigunguCodeName", "sidoCode"} ),
	AbShelterVO("shelter", // 유기동물 보호소
			new String[] { "careNm", "careRegNo" }, 
			new String[] { "upr_cd", "org_cd" },
			new String[] { "ab"} ),
	BreedVO("kind", // 축종
			new String[] { "kindCd", "KNm" }, 
			new String[] { "up_kind_cd" },
			new String[] { "abShelterCode", "abShelterName"} ),
	// 미완성
	AbandonedAnimalVO("abandonmentPublic", // 유기동물
			new String[] { "noticeEdt", "popfile", "processState" }, 
			new String[] { "pageNo", "numOfRows", "care_reg_no" },
			new String[] { "", "", "",} );

	private final String apiName;
	private final String[] tagNames;
	private final String[] requiredItems;
	private final String[] dbColumns;

	AbAnimalEnum(String apiName, String[] tagNames, String[] requiredItems, String[] dbColumns) {
		this.apiName = apiName;
		this.tagNames = tagNames;
		this.requiredItems = requiredItems;
		this.dbColumns = dbColumns;
	}

	public String getApiName() {
		return this.apiName;
	}

	public String[] getTagNames() {
		return this.tagNames;
	}

	public String[] getRequiredItems() {
		return this.requiredItems;
	}
	
	public String[] getDbColumns() {
		return this.dbColumns;
	}
}

/*
 * SidoVO

시도코드		orgCd					sidoCode
시도이름		orgdownNm               sidoCodeName
		
orgCd (upr_cd) : 시도코드 (시군구 상위코드) 
orgdownNm : 시도 명 
uprCd (org_cd) : 시군구코드
orgdownNm : 시군구 명 (요청에 따라서 다른 이름) 
careNm : 보호소 명
careRegNo : 보호소 번호
KNm : 품종 명
kindCd : 품종코드 up_kind_cd : 축종코드
pageNo : 페이지 번호 
numOfRows : 페이지당 보여줄 개수

 * AbandonedAnimalVO
									
공고종료일		noticeEdt		       	noticeEndDate
Image		popfile		           	abPic
상태			processState	    	abState
성별			sexCd				sexCode		0 : 알수없음, 1 : 남성, 2 : 여성, 3 : 남성+중성화, 4 : 여성+중성화	    
중성화여부		neuterYn		    NeuterCode	0 : 알수없음, 1 : 중성화함, 2: 중성화안함
특징			specialMark				abFeat		    
보호소이름		careNm				AbSelter.abSelterName			                                                       
보호소전화번호	careTel			  	AbSelter.abSelterTel                                               
보호장소		careAddr		    AbSelter.abSelterAddress
관할기관		orgNm			    AbSelter.organize
담당자		chargeNm	        AbSelter.managerName
담당자연락처	officetel			AbSelter.managerTel
특이사항		noticeComment	        abComment                                               
한 페이지결과수	numOfRows               *
페이지 번호	pageNo                  *
전체 결과 수	totalCount	            *
결과코드		resultCode            	*
결과메세지		resultMsg               *
유기번호		desertionNo	            abanimalCode                                               
Thumbnail	Image					abThumbPic              	                                                        
접수일		happenDt			    findDate                                                   
발견장소		happenPlace			    findLoc                                               
품종			kindCd					breedCode                                               
색상			colorCd				animalColorCode				AnimalColor에 있는지 조회하고 없으면 추가, 기본적으로 AnimalColorGroup에 추가 
나이			age						abAge					                                                   
체중			weight					abWeight
공고번호		noticeNo				abandonedNum
공고시작일		noticeSdt				noticeStartDate
*/