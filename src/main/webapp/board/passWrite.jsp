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
<title>비번입력</title>
<script src="/cschoegov1/script/jquery-3.6.0.js"></script>
<script src="/cschoegov1/script/jquery-ui.js"></script>
</head>
<script>
	$(function() {
		$("#delBtn").click(function() {
			var pass = $("#pass").val();
			pass = $.trim(pass);
			if (pass == "") {
				alert("비번을 입력하세요");
				$("#pass").focus();
				return false;
			}
			var param = "unq=${unq}&pass=" + pass;
			$.ajax({
				type : "POST",
				data : param,
				url : "boardDelete.do",
				dataType : "text",
				success : function(data) {
					if (data == "success") {
						alert("삭제완료");
						location = "boardList.do";
					} else if (data == "passerror") {
						alert("비번불일치");
					} else {
						alert("삭제오류");
					}
				},
				error : function() {
					alert("오류발생");
				}
			});
		});

	})
</script>
<body>
	<table>
		<tr>
			<th>비번입력</th>
			<td><input type="password" id="pass" /></td>
			<td><button type="button" id="delBtn">삭제</button></td>
		</tr>
	</table>
</body>
</html>