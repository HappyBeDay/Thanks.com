js 폴더

<경로>

JSTL 필요 : <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
(이 방식을 추천)
	1. <c:url value="/resources/js/{fileName}"/>
	
	2. <c:url value="/js/{fileName}"/>
	
JSTL 필요없음 :
	3. /Thanks.com/resources/js/{fileName}

예시는 css폴더에 readme.txt 참조...


메뉴바 JS:
	<script src="../js/main.js"></script>