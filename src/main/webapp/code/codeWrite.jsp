<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코드관리</title>
</head>
<style>
table {
	width: 400px;
	border-collapse: collapse;
}

th, td {
	border: 1px solid #cccccc;
	padding: 5px;
}
</style>
<script>
function fn_submit(){
	var f = document.frm;
	if(f.name.value==""){
		alert("이름을 입력하세요");
		f.name.focus();
		return false;
	}
	f.submit();
}
</script>
<body>
	<form name="frm" method="post" action="codeWriteSave.do">
		<table>
			<tr>
				<th>분류</th>
				<td><select name="gid"><option value="1">업무</option>
						<option value="2">취미</option></select></td>
			</tr>
			<tr>
				<th>코드명</th>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<th colspan="2">
					<button type="submit" onclick="fn_submit();return false;">저장</button>	
					<button type="reset">취소</button>	
				</th>	
			</tr>
		</table>
	</form>
</body>
</html>