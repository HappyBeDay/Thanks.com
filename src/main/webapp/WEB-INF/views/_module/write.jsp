<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC >
<html>
<head>
<title>Start Simple Web</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
</script>
</head>
<c:set var="boardtitle" value="${param.boardtitle}"></c:set>
<c:set var="boardcontent" value="${param.boardcontent}"></c:set>
<c:set var="boardpic" value="${param.boardpic}"></c:set>
<c:set var="boarddate" value="${param.boarddate}"></c:set>
<c:set var="pnum" value="${param.boardnum}"></c:set>

<body>
<c:out value="${boardTitle}"></c:out>
	<div id="write_area">
	
		<form enctype="multipart/form-data" action="/board/boardInsert.do" method="post" name="insertFrm" enctype="multipart/form-data"><!-- action 안에 있던거 혹시나해서 빼놈 write_ok.php?board_id=<?echo $board_id;? -->
			<div class="mb-3">
				<label for="title" style="padding-top: 50px;">제목</label>
				 <input	type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">
				 
			</div>
			<div class="mb-3">
				<label for="content">내용</label>
				<textarea class="form-control" rows="5" name="content" id="content" placeholder="내용을 입력해 주세요"></textarea>
						<c:choose>
								<c:when test="${boardTitle eq '' or boardTitle==null}">
									<input type="hidden" value="new" name="job">
								</c:when>
								<c:otherwise>
									<input type="hidden" value=${boardtitle } name="boardtitle">
									<input type="hidden" value=${boardcontent } name="boardcontent">
									<input type="hidden" value=${boardpic } name="boardpic">
									<input type="hidden" value=${boarddate } name="boarddate">
									<input type="hidden" value=${boardnum } name="boardnum">
								</c:otherwise>
							</c:choose>
			</div>	
			<div class="mb-3">
				<input type="file" value="첨부파일" placeholder="첨부파일" />
			</div>

			<div class="mb-3">
				<input type="submit" value="글 작성" />
			</div>
		</form>
	</div>
</body>
</html>
