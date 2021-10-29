<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<script type="text/javascript">
</script>

</head>
	<div id="write_area">
		<form enctype="multipart/form-data"
			action="write_ok.php?board_id=<?echo $board_id;?>" method="post">

			<div class="mb-3">

				<label for="title" style="padding-top: 50px;">제목</label> <input
					type="text" class="form-control" name="title" id="title"
					placeholder="제목을 입력해 주세요">

			</div>

			<div class="mb-3">

				<label for="content">내용</label>

				<textarea class="form-control" rows="5" name="content" id="content"
					placeholder="내용을 입력해 주세요"></textarea>

			</div>

			<div class="mb-3">
				<input type="file" value="첨부파일" placeholder="첨부파일" />
			</div>

			<div class="mb-3">
				<input type="submit" value="글 작성" />
			</div>

		</form>
	</div>
