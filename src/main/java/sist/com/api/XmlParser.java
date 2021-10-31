package sist.com.api;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
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
			
			//System.out.println(tagItems);
			// dbCol로 변경해야되지 않을까?
			//System.out.println(dbCol);
			System.out.println("---tag---");
			System.out.println(Arrays.toString(tag));
			//System.out.println("---dbCol---");
			//System.out.println(Arrays.toString(dbCol));
			for(int j = 0 ; j < tagItems.getLength(); j++) {
				String name = tagItems.item(j).getNodeName();
				System.out.println("name : " + name);
				for(int k = 0 ; k < tag.length; k++) {
					if(name.equals(tag[k])) {
						System.out.println("value : " + tagItems.item(j).getTextContent());
						map.put(dbCol[k], tagItems.item(j).getTextContent());
					}
				}
				//System.out.println(dbCol[j]);
				//System.out.println(value);
			}
			System.out.println(map);
			list.add(map);
		}
		//System.out.println(list);
		return list;
	}
	
	
	/* 
	 * VO <-> Map 
	 * Converter 사용한 예제
	
	List<StudentVO> list = dao.selectAllStudent();
	JSONArray jsonArray = new JSONArray();

	for (int i = 0; i < list.size(); i++) {
		System.out.println("Vo -> Map");
		Map<String, Object> map = convertToMap(list.get(i));
		System.out.println(map);

		//SuppressWarnings("unchecked")
		jsonArray.add(new JSONObject(map));
		
		System.out.println("Map -> Vo");
		StudentVO convertValueObject = convertToValueObject(map, StudentVO.class);
		System.out.println(convertValueObject);
	}
	model.addAttribute("jsonList", jsonArray);
	*/
	
	/**
	 * @param obj
	 * @return
	 * VO -> Map
	 */
	public Map<String, Object> convertToMap(Object obj) throws IllegalArgumentException, IllegalAccessException {
		if (obj == null)
			return Collections.emptyMap();

		Map<String, Object> convertMap = new HashMap<>();

		Field[] fields = obj.getClass().getDeclaredFields();

		for (Field field : fields) {
			field.setAccessible(true);
			convertMap.put(field.getName(), field.get(obj));
		}

		return convertMap;
	}
	
	/**
	 * 
	 * @param map
	 * @param clazz
	 * @return
	 * Map -> VO (clazz 정보로)
	 */
	public <T> T convertToValueObject(Map<String, Object> map, Class<T> clazz)
			throws InstantiationException, IllegalAccessException, IllegalArgumentException, InvocationTargetException,
			NoSuchMethodException, SecurityException {

		if (clazz == null)
			throw new NullPointerException("Class cannot be null in covertToValueObject Method");

		T instance = clazz.getConstructor().newInstance();

		if (map == null || map.isEmpty())
			return instance;

		for (Map.Entry<String, Object> entrySet : map.entrySet()) {
			Field[] fields = clazz.getDeclaredFields();

			System.out.println("--- entrySet ---");
			System.out.println(entrySet);

			for (Field field : fields) {
				field.setAccessible(true);

				String fieldName = field.getName();

				try {
					// key -> value가 Null일 경우 에러 발생!
					boolean isSameType = entrySet.getValue().getClass().equals(field.getType());
					boolean isSameName = entrySet.getKey().equals(fieldName);

					if (isSameType && isSameName) {
						field.set(instance, map.get(fieldName));
					}
				} catch (NullPointerException e) {
					System.out.println("isSameType 값은 null입니다.");
				} // try - catch

			}
		}

		return instance;
	}
}
