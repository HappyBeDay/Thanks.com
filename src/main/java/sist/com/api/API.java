package sist.com.api;

import java.util.List;
import java.util.Map;

public interface API {
	String makeURL();
	String requestURL(String url);
	List<Map<String, String>> processingData(String data);
	int updateDataBase();
}
