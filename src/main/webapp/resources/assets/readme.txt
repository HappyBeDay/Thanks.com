assets

<경로>

JSTL 필요 : <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
(이 방식을 추천)
	1. <c:url value="/resources/assets/{fileName}"/>
	
	2. <c:url value="/assets/{fileName}"/>
	
JSTL 필요없음 :
	3. /Thanks.com/resources/assets/{fileName}

예시는 css폴더에 readme.txt 참조...