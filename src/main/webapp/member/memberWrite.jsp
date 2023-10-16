<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<link rel="stylesheet" href="/cschoegov1/css/jquery-ui.css">
<script src="/cschoegov1/script/jquery-3.6.0.js"></script>
<script src="/cschoegov1/script/jquery-ui.js"></script>
<script>
	$(function() {
		$("#birth").datepicker({
			dateFormat : 'yy-mm-dd',
			changeMonth : true,
			changeYear : true
		});

		$("#btnSubmit").click(function() {
			var userid = $("#userid").val();
			var pass = $("#pass").val();
			var name = $("#name").val();

			userid = $.trim(userid);
			pass = $.trim(pass);
			name = $.trim(name);

			$("#userid").val(userid);
			$("#pass").val(pass);
			$("#name").val(name);

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
			if (name == "") {
				alert("이름을 입력하세요");
				$("#name").focus();
				return false;
			}

			var formDta = $("#frm").serialize();

			$.ajax({
				type : "POST",
				data : formDta,
				url : "memberWriteSave.do",
				dataType : "text",
				success : function(rs) {
					if (rs == "ok") {
						alert("저장완료");
						location = "loginWrite.do";
					} else {
						alert("저장오류");
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
	<table>
		<colgroup>
			<col width="25%" />
			<col width="25%" />
			<col width="25%" />
			<col width="25%" />
		</colgroup>
		<tr>
			<th>홈</th>
			<th><a href="/cschoegov1/boardList.do">게시판</a></th>
			<th><a href="/cschoegov1/memberWrite.do">회원가입</a></th>
			<th><a href="/cschoegov1/loginWrite.do">로그인</a></th>
		</tr>
	</table>
	<form id="frm">
		<table>
			<caption>회원관리</caption>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="userid" id="userid"
					placeholder="아이디입력" />
					<button type="button" id="btnIdChk">아이디확인</button></td>
			</tr>
			<tr>
				<th>비번</th>
				<td><input type="password" name="pass" id="pass" /></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" id="name" />
			</tr>
			<tr>
				<th>성별</th>
				<td><input type="radio" name="gender" id="gender" value="M" />남
					<input type="radio" name="gender" id="gender" value="F" />여</td>
			</tr>
			<tr>
				<th>생일</th>
				<td><input type="text" name="birth" id="birth" readonly /></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><input type="text" name="phone" id="phone" />(예
					010-1234-1234)</td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="zipcode" id="zipcode" />
					<button type="button">우편번호</button> <br /> <input type="text"
					name="addr" id="addr" /></td>
			</tr>
		</table>
		<div class="div_btn">
			<button type="submit" id="btnSubmit">저장</button>
			<button type="reset">취소</button>
		</div>
	</form>
</body>
</html>