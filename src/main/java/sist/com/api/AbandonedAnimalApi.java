package sist.com.api;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

import lombok.Setter;

public class AbandonedAnimalApi {
	/* SingleTone */
	private static AbandonedAnimalApi abandonedAnimalApi;

	public static AbandonedAnimalApi getInstance() {
		if (abandonedAnimalApi == null) {
			return abandonedAnimalApi = new AbandonedAnimalApi();
		}
		return abandonedAnimalApi;
	}

	private String path = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/";
	private String serviceKey = "JzbaXINjH0i33pEwOnybMAJgFBipoeklYHGonTVn62eZSV7Qp72p1aO0ARQJr9xZ1FBsJKrwzwNuS6wUXPbUAw%3D%3D";
	@Setter
	private String dbTableName;

	public StringBuilder getRequestUri(String dbTableName) throws UnsupportedEncodingException {
		// URL
		StringBuilder sb = new StringBuilder(path);
		sb.append(dbTableName);
		// Service Key
		sb.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=" + serviceKey);

		return sb;
	}

	/*
	private void getDataFromRequestUri() {
		requestTable = setServiceRequestUri(requestTable);
		StringBuilder urlBuilder = serviceRequestUri.getRequestUri(requestTable);
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		System.out.println("Response code: " + conn.getResponseCode());
		BufferedReader rd;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}
		rd.close();
		conn.disconnect();
		System.out.println(sb.toString());

		String data = sb.toString();
		getXmlData(data);
	}
	*/

	private void getXmlDataFromString(String data, String[] parser) throws Exception {

		// 1. 빌더 팩토리 생성.
		DocumentBuilderFactory builderFactory = DocumentBuilderFactory.newInstance();

		// 2. 빌더 팩토리로부터 빌더 생성
		DocumentBuilder builder = builderFactory.newDocumentBuilder();

		// 2.5 String 타입 처리
		InputStream is = new ByteArrayInputStream(data.getBytes());

		// 3. 빌더를 통해 XML 문서를 파싱해서 Document 객체로 가져온다.
		Document document = builder.parse(is);

		// 문서 구조 안정화 ?
		// document.getDocumentElement().normalize();

		// XML 데이터 중 <person> 태그의 내용을 가져온다.
		NodeList sidoCode = document.getElementsByTagName("orgCd");
		NodeList sidoName = document.getElementsByTagName("orgdownNm");

		// <person> 태그 리스트를 하나씩 돌면서 값들을 가져온다.
		for (int i = 0; i < sidoCode.getLength(); ++i) {
			// 속성 값 가져오기.
			// String name =
			// personTagList.item(i).getAttributes().getNamedItem("sex").getNodeValue();

			// <person> 태그의 하위 노드들을 가져온다. ( 여기서 노드는 태그를 의미한다. )
			System.out.println(sidoCode.item(i).getTextContent());
			System.out.println(sidoName.item(i).getTextContent());
		}
	}

	public void updateTable(String tableName) {

	}

}

/*
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
 */


/*
공고종료일		noticeEdt		
Image		popfile		
상태			processState	
성별			sexCd			
중성화여부		neuterYn		
특징			specialMark		
보호소이름		careNm			
보호소전화번호	careTel			
보호장소		careAddr		
관할기관		orgNm			
담당자		chargeNm	
담당자연락처	officetel
특이사항		noticeComment	
한 페이지결과수	numOfRows
페이지 번호		pageNo
전체 결과 수	totalCount	
결과코드		resultCode
결과메세지		resultMsg
유기번호		desertionNo	
Thumbnail	Image
접수일		happenDt
발견장소		happenPlace
품종			kindCd
색상			colorCd	
나이			age
체중			weight
공고번호		noticeNo
공고시작일		noticeSdt
*/
enum defaultData {
	Sido("sido", "SidoVO", 
			new String[] { "orgCd", "orgdownNm" }, null),
	Sigungu("sigungu", "", 
			new String[] { "orgCd", "orgdownNm", "uprCd" }, new String[] { "upr_cd" }),
	Shelter("shelter", "", 
			new String[] { "careNm", "careRegNo" }, new String[] { "upr_cd", "org_cd" }),
	Breed("kind", "", 
			new String[] { "kindCd", "KNm" }, new String[] { "up_kind_cd" }),
	abandonedAnimal("abandonmentPublic", "", 
			new String[] { "", "", "" }, new String[] { "pageNo", "numOfRows" });

	private final String apiName;
	private final String tableVO;
	private final String[] tagNames;
	private final String[] requiredItems;

	defaultData(String apiName, String tableVO, String[] tagNames, String[] requiredItems) {
		this.apiName = apiName;
		this.tableVO = tableVO;
		this.tagNames = tagNames;
		this.requiredItems = requiredItems;
	}

	String getApiName() {
		return this.apiName;
	}

	String getTableVO() {
		return this.tableVO;
	}

	String[] getTagNames() {
		return this.tagNames;
	}

	String[] getRequiredItems() {
		return this.requiredItems;
	}
}








