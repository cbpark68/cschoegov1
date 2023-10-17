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
<title>우편번호</title>
<script src="/cschoegov1/script/jquery-3.6.0.js"></script>
</head>
<script>
	$(function() {
		$("#btnSend").click(function() {
			var addr = $("#addr").val();
			var addrarr = addr.split(" ");
			var zipcode = addrarr[0].substring(1,addrarr[0].length-1);
			addr = addr.replace(addrarr[0],"");
			addr = $.trim(addr);
			//alert(zipcode+":"+addr);
			opener.document.frm.zipcode.value = zipcode;
			opener.document.frm.addr.value = addr;
			self.close();	

		});
	});
</script>
<body>
	<div style="width: 100%; text-align: center;">
		<select name="addr" id="addr">
			<c:forEach var="i" items="${list}">
				<option value="${i.addr}">${i.addr}</option>
			</c:forEach>
		</select>
		<p />
		<button type="button" id="btnSend">적용하기</button>
	</div>
</body>
</html>