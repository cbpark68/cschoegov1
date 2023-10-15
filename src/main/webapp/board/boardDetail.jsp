<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%-- <% pageContext.setAttribute("newline", "\n"); %>
<c:set var="content" value="${fn:replace(bvo.content,newline,'<br/>')}"/>
 --%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<script src="/cschoegov1/script/jquery-3.6.0.js"></script>
<script src="/cschoegov1/script/jquery-ui.js"></script>
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
</style>
<script>
	function fn_submit() {
		if ($.trim($("#title").val()) == "") {
			alert("제목을 입력하세요");
			$("#title").focus();
			return false;
		}
		$("#title").val($.trim($("#title").val()));
		if ($.trim($("#pass").val()) == "") {
			alert("비번을 입력하세요");
			$("#pass").focus();
			return false;
		}
		$("#pass").val($.trim($("#pass").val()));

		var formData = $("#frm").serialize();
		$.ajax({
			type : "POST",
			data : formData,
			url : "boardWriteSave.do",
			dataType : "text",
			success : function(data) {
				if (data == "ok") {
					alert("저장완료");
					location = "boardList.do";
				} else {
					alert("저장오류");
				}
			},
			error : function() {
				alert("오류발생");
			}
		});
	}
</script>
<body>
	<form id="frm">
		<table>
			<caption>게시판</caption>
			<colgroup>
				<col width="30%" />
				<col width="*" />
			</colgroup>
			<tr>
				<th><label for="title">제목</label></th>
				<td>${bvo.title}</td>
			</tr>
			<tr>
				<th>글쓴이</th>
				<td>${bvo.name}</td>
			</tr>
			<tr>
				<th>내용</th>
				<td height="50px">${bvo.content}</td>
			</tr>
			<tr>
				<th>등록일</th>
				<td>${bvo.rdate}</td>
			</tr>
			<tr>
				<th colspan="2">
					<button type="button" onclick="fn_modify();">저장</button>
					<button type="reset">취소</button>
				</th>
			</tr>
		</table>
	</form>
</body>
</html>