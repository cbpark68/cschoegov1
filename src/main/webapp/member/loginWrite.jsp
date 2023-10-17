<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="/cschoegov1/script/jquery-3.6.0.js"></script>
<script>
	$(function() {
		$("#btnSubmit").click(function() {
			var userid = $.trim($("#userid").val());
			var pass = $.trim($("#pass").val());
			if (userid == "") {
				alert("아이디를 입력하세요");
				$("#userid").focus();
				return false;
			}
			if (pass == "") {
				alert("비번을 입력하세요");
				$("#pass").focus();
				return false;
			}

			$.ajax({
				type : "POST",
				data : "userid=" + userid+"&pass="+pass,
				url : "loginWriteSub.do",
				dataType : "text",
				success : function(rs) {
					if (rs == "success") {
						alert("로그인 성공");
						location="boardList.do";
					} else {
						alert("로그인 실패");
					}
				},
				error : function() {
					alert("오류발생");
				}
			});
		});
	});
</script>
</head>
<style>
body {
	font-size: 12px;
	font-color: #333333;
	font-family: 맑은 고딕;
}

a {
	text-decoration: none;
}

table {
	width: 600px;
	border-collapse: collapse;
}

caption {
	font-size: 20px;
	font-weight: bold;
	margin-top: 10px;
}

th, td {
	border: 1px solid #333333;
	padding: 3px;
	line-height: 2.0;
}

.div_btn {
	width: 600px;
	text-align: center;
	margin-top: 5px;
}
</style>
<body>
<%@ include file="../include/topMenu.jsp" %>
	<form id="frm" name="frm">
		<table>
			<caption>로그인</caption>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="userid" id="userid"
					placeholder="아이디입력" /></td>
			</tr>
			<tr>
				<th>비번</th>
				<td><input type="password" name="pass" id="pass" /></td>
			</tr>
		</table>
		<div class="div_btn">
			<button type="submit" id="btnSubmit">저장</button>
			<button type="reset">취소</button>
		</div>
	</form>
</body>
</html>