package sist.com.api.apiEnum;

public enum RequiredKeyEnum {
	//apiTagName(dbColumn, Dao)
	upr_cd("sidoCode" ,"SidoDao"), //시도코드
	
	//--미완
	org_cd("sigunguCode", "Sigungu"), //시군구
	up_kind_cd("animalTypeCode", "AnimalType"), //축종코드
	//pageNo
	//numOfRows
	care_reg_no("abShelterCode", "AbShelter"); //보호소 코드
	
	private String dbCol;
	private String dao;
	RequiredKeyEnum(String dbCol, String dao){
		this.dbCol = dbCol;
		this.dao = dao;
	}
	
	public String getDbCol() {
		return this.dbCol;
	}
	public String getDao() {
		return this.dao;
	}
}
