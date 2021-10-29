package sist.com.api;

import sist.com.api.abAnimal.ApiAbShelter;

public class ApiTest {

	public static void main(String[] args) {
		//ApiSido.getInstance().updateDataBase();
		String url = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/shelter?serviceKey=JzbaXINjH0i33pEwOnybMAJgFBipoeklYHGonTVn62eZSV7Qp72p1aO0ARQJr9xZ1FBsJKrwzwNuS6wUXPbUAw%3D%3D&upr_cd=6110000&org_cd=3220000";
		new ApiAbShelter(null, null).processingData(url);
	}
}
