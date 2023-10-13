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
	<table>
		<caption>부서목록</caption>
		<tr>
			<th>부서번호</th>
			<th>부서명</th>
			<th>목록</th>
		</tr>
		<c:forEach var="rs" items="${deptList}" varStatus="status">
			<tr>
				<td>${rs.deptno}</td>
				<td><a href="deptDetail.do?deptno=${rs.deptno}">${rs.dname}</a></td>
				<td>${rs.loc}</td>
			</tr>
		</c:forEach>
		<tr>

		</tr>
	</table>
</body>
</html>