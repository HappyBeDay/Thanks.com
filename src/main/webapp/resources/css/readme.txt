css

<경로>

JSTL 필요 : <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
(이 방식을 추천)
	1. <c:url value="/resources/css/{fileName}"/>
	ex:	<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet"/>
	
	2. <c:url value="/css/{fileName}"/>
	ex:	<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet"/>
	
JSTL 필요없음 :
	3. /Thanks.com/resources/css/{fileName}
	ex:	<link href="/Thanks.com/resources/css/main.css"/>" rel="stylesheet"/>
