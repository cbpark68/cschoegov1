<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
	<c:set var="kor" value="90" />
	<c:set var="eng" value="70" />
	<c:set var="hap" value="${kor+eng}" />
	<c:set var="str" value="javascript" />
	국어 : ${kor}
	<br /> 영어 : ${eng}
	<br /> 합계 : ${hap}
	<br /> 문자열길이 : ${fn:length(str)}
	<br /> 변경 : ${fn:replace(str,"java","oracle")}
	<br /> 범위설정 :${fn:substring(str,0,4)}
	<br />
	<c:set var="foo" value="3.5" />
	foo :
	<c:out value="${foo}" />
	<br /> floor적용 : ${foo - (foo%1)}
	<br /> ceil적용 : ${foo + (1-(foo%1))}
	<br /> round적용 : ${foo+0.5-((foo+0.5)%1)}
	<br />
	<c:if var="result" test="${kor>='90'}">
		A학점	
	</c:if>
	<br />
	<c:if var="result" test="${kor<90 && kor>='80'}">
		B학점	
	</c:if>
	<c:if var="result" test="${kor<80 && kor>='70'}">
		C학점	
	</c:if>
	<c:if var="result" test="${kor<70 && kor>='60'}">
		D학점	
	</c:if>
	<c:if var="result" test="${kor<60}">
		F학점	
	</c:if>
	<c:if var="result" test="${kor<90 && kor>='80'}">
		B학점	
	</c:if>
	<c:if var="result" test="${kor<90 && kor>='80'}">
		B학점	
	</c:if>
	<br />
	<c:set var="title" value="java"/>
	<c:if test="${title != 'java'}">
		자바<br/>
	</c:if>
	<br />
	<c:forEach var="i" begin="1" end="10">
		${i}
	</c:forEach>
	<form name="frm" method="post" action="deptWriteSave.do">
		<table>
			<tr>
				<th>부서번호</th>
				<td><input type="text" name="deptno" /></td>
			</tr>
			<tr>
				<th>부서명</th>
				<td><input type="text" name="dname" /></td>
			</tr>
			<tr>
				<th>위치</th>
				<td><input type="text" name="loc" /></td>
			</tr>
			<tr>
				<th colspan="2"><button type="submit">저장</button>
			</tr>
		</table>
	</form>
</body>
</html>