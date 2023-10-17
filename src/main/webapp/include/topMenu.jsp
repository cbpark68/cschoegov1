<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String USERID = (String) session.getAttribute("sessionUserId");
	%>
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
			<%
			if (USERID == null) {
			%>
			<th><a href="/cschoegov1/memberWrite.do">회원가입</a></th>
			<th><a href="/cschoegov1/loginWrite.do">로그인</a></th>
			<%
			} else {
			%>
			<th><a href="/cschoegov1/memberModify.do">회원정보</a></th>
			<th><a href="/cschoegov1/logout.do">로그아웃</a></th>
			<%
			}
			%>
		</tr>
	</table>

</body>
</html>