<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC >
<html>
<head>
<title>Start Simple Web</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function() {
	$("input#submitPost").click(function() {
		//제약사항 
		$("form").submit();
	});
});
</script>

</head>
<c:set var="boardcode" value="${param.boardCode}"></c:set>
<c:set var="boardtitle" value="${param.boardTitle}"></c:set>
<c:set var="boardcontent" value="${param.boardContent}"></c:set>
<c:set var="boardpic" value="${param.boardPic}"></c:set>
<c:set var="boarddate" value="${param.boardDate}"></c:set>

<body>
<%-- <c:out value="${boardTitle}"></c:out>
 --%>	<div id="write_area">
		<form action="community_900_mainBoard" enctype="multipart/form-data" method="post" name="insertFrm">
			
			<table>
			<div class="mb-3">
				<label for="title" style="padding-top: 50px;">제목</label>
				 <input	type="text" class="form-control" name="title" id="boardtitle" placeholder="제목을 입력해 주세요">
			</div>
			
			<div class="mb-3">
				<label for="content">내용</label>
				<textarea class="form-control" rows="5" name="content" id="boardcontent" placeholder="내용을 입력해 주세요"></textarea>
									<input type="hidden" value=${boardCode } name="boardcode">
									<input type="hidden" value=${boardTitle } name="boardtitle">
									<input type="hidden" value=${boardContent } name="boardcontent">
									<input type="hidden" value=${boardPic } name="boardpic">
									<input type="hidden" value=${boardDate } name="boarddate">
								</div>
			</table>
			<div class="mb-3">
				<input type="file" name="file" value="첨부파일" placeholder="첨부파일" />
			</div>
			<div class="mb-3">
				<input id="submitPost" type="submit" value="글 작성" />
			</div>
		</form>
	</div>
</body>
</html>
