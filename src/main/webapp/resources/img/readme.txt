img 폴더

<경로>

JSTL 필요 : <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
(이 방식을 추천)
	1. <c:url value="/resources/img/{fileName}"/>
	
	2. <c:url value="/img/{fileName}"/>
	
JSTL 필요없음 :
	3. /Thanks.com/resources/img/{fileName}

예시는 css폴더에 readme.txt 참조...