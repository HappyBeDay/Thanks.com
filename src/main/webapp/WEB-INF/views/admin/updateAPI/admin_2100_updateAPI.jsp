<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateAPI</title>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	let result = "${result}"
	if(result === "Fail"){
		alert("API update fail... : Table 이름을 확인해주세요.");
	}
</script>
</head>
<body>

	<h2>This is updateAPI Page</h2>
	<h4>AbandonedAnimal</h4>
	<ul>
		<li>${updateRows}</li>
	</ul>

</body>
</html>