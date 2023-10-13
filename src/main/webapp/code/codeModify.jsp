<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
	function fn_submit() {
		var f = document.frm;
		if (f.name.value == "") {
			alert("이름을 입력하세요");
			f.name.focus();
			return false;
		}
		f.submit();
	}
</script>
<body>
	<form name="frm" method="post" action="codeModifySave.do">
	<input type="hidden" name="code" value="${cvo.code}"/>
		<table>
			<tr>
				<th>분류</th>
				<td><select name="gid">
						<option value="1" <c:if test="${cvo.gid=='1'}">selected</c:if>>업무</option>
						<option value="2" <c:if test="${cvo.gid=='2'}">selected</c:if>>취미</option>
				</select></td>
			</tr>
			<tr>
				<th>코드명</th>
				<td><input type="text" name="name" value="${cvo.name}" /></td>
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