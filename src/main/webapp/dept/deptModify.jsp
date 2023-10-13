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
<title>부서관리</title>
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
<body>
	<form name="frm" method="post" action="deptModifySave.do">
		<table>
			<tr>
				<th>부서번호</th>
				<td><input type="text" name="deptno" value="${dvo.deptno}" readonly/></td>
			</tr>
			<tr>
				<th>부서명</th>
				<td><input type="text" name="dname" value="${dvo.dname}"/></td>
			</tr>
			<tr>
				<th>위치</th>
				<td><input type="text" name="loc" value="${dvo.loc}" /></td>
			</tr>
			<tr>
				<th colspan="2"><button type="submit">저장</button>
			</tr>
		</table>
	</form>
</body>
</html>