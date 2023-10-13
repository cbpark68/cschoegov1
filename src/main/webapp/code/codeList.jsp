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
function fn_delete(code){
	if(confirm("삭제하시겠습니까?")){
		location="codeDelete.do?code="+code;
	}
}
function fn_modify(code){
	if(confirm("수정하시겠습니까?")){
		location="codeModify.do?code="+code;
	}
}

</script>
<body>
	<table>
		<caption>
			<div>코드목록</div>
			<div style="width: 100%; text-align: left;">total: ${tot} 건</div>
		</caption>
		<colgroup>
			<col width="15%" />
			<col width="20%" />
			<col width="40%" />
			<col width="*" />
		</colgroup>
		<tr>
			<th>번호</th>
			<th>그룹</th>
			<th>코드명</th>
			<th>구분</th>
		</tr>
		<c:set var="cnt" value="1" />
		<c:forEach var="l" items="${list}">
			<tr align="center">
				<td>${cnt}</td>
				<td>${l.gid}</td>
				<td>${l.name}</td>
				<td>
					<button type="button" onclick="fn_modify(${l.code});">수정</button>	
					<button type="button" onclick="fn_delete(${l.code});">삭제</button>	
				</td>
			</tr>
			<c:set var="cnt" value="${cnt+1}" />
		</c:forEach>
	</table>

</body>
</html>