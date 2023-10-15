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
<title>게시판</title>
</head>
<style>
body {
	font-size: 12px;
}

button {
	font-size: 12px;
}

table {
	width: 600px;
	border-collapse: collapse;
}

caption {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 5px;
}

th, td {
	border: 1px solid #cccccc;
	padding: 5px;
}

.input1 {
	width: 98%;
}

textarea {
	width: 98%;
	height: 70px;
}

.div1 {
	width: 600px;
	margin-top: 5px;
	text-align: right;
}

.div2 {
	width: 600px;
	margin-top: 5px;
	text-align: center;
}
</style>
<body>
	<div class="div1">
		<div class="div2" style="font-size: 16px">게시판</div>
		<div style="text-align: left; float: left">Total : ${tot}</div>
		<div>
			<form name="searchForm" method="post" action="boardList.do">
				<select name="searchGbn" id="searchGbn">
					<option value="title">제목</option>
					<option value="content">내용</option>
					<option value="name">글쓴이</option>
				</select> <input type="text" name="searchText" id="searchText"
					style="width: 100px;" value="${searchText}" />
				<button type="submit">검색</button>
			</form>
		</div>
	</div>
	<div>
		<table>
			<colgroup>
				<col width="15%" />
				<col width="40%" />
				<col width="15%" />
				<col width="15%" />
				<col width="15%" />
			</colgroup>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>등록일</th>
				<th>조회수</th>
			</tr>
			<c:set var="cnt" value="${beginRowNo}" />
			<c:forEach var="rs" items="${list}">
				<tr align="center">
					<td>${cnt}</td>
					<td align="left"><a href="boardDetail.do?unq=${rs.unq}">${rs.title}</a></td>
					<td>${rs.name}</td>
					<td>${rs.rdate}</td>
					<td>${rs.hits}</td>
				</tr>
				<c:set var="cnt" value="${cnt-1}" />
			</c:forEach>
		</table>
	</div>
	<div class="div2">
		<c:forEach var="i" begin="1" end="${totPg}">
			<a href="boardList.do?viewPg=${i}&searchText=${searchText}">${i}
			</a>
		</c:forEach>
	</div>
	<div class="div1">
		<button type="button" onclick="location='boardWrite.do'">글쓰기</button>
	</div>
</body>
</html>