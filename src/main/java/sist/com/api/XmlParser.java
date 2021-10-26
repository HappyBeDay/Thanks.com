package sist.com.api;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class XmlParser {
	private XmlParser() {
		super();
	};
	
	private static XmlParser xmlParser;
	public static XmlParser getInstance() {
		if(xmlParser == null) {
			return xmlParser = new XmlParser();
		}
		return xmlParser;
	}
	
	// return 타입을 뭘로 해야될까?
	public List<Map<String, String>> getXmlDataFromString(String data, String[] tag, String[] dbCol) throws ParserConfigurationException, SAXException, IOException {

		// 1. 빌더 팩토리 생성.
		DocumentBuilderFactory builderFactory = DocumentBuilderFactory.newInstance();

		// 2. 빌더 팩토리로부터 빌더 생성
		DocumentBuilder builder = builderFactory.newDocumentBuilder(); // ParserConfigurationException

		// 2.5 String 타입 처리
		InputStream is = new ByteArrayInputStream(data.getBytes());

		// 3. 빌더를 통해 XML 문서를 파싱해서 Document 객체로 가져온다.
		Document document = builder.parse(is); // SAXException, IOException

		// 4. 사용할 데이터Node인 item만 뽑아낸다.
		NodeList tagList = document.getElementsByTagName("item");
		
		// 6. Node에 들어있는데이터를 List에 담아서 반환한다.
		List<Map<String, String>> list = new ArrayList<>();
		for (int i = 0; i < tagList.getLength(); ++i) {
			Map<String, String> map = new HashMap<>();
			NodeList tagItems = tagList.item(i).getChildNodes();
			
			// dbCol로 변경해야되지 않을까?
			for(int j = 0 ; j < dbCol.length; j++) {
				String value = tagItems.item(j).getTextContent();
				//System.out.println(value);
				map.put(dbCol[j], value);
			}
			list.add(map);
		}
		
		return list;
	}
}
