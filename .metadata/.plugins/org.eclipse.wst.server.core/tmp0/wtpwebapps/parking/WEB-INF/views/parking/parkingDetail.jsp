<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 보기</title>
</head>
<body>
	<section class="container">
		<h2>상세보기</h2>
		<br><hr>
			<table>
				<tr>
					<td><input type="hidden" name="park_no" id="park_no" value="${dto.park_no }"></td>
				</tr>
				<tr>
					<th>차량 번호</th>
					<th>${dto.car_num }</th>
				<tr>
				<tr>
					<th>입차 시간</th>
					<td>${dto.in_time }</td>
				</tr>
				<tr>
					<th>출차 시간</th>
					<td>${dto.out_time }</td>
				</tr>
				<tr>
					<th>이용 시간</th>
					<td>${dto.using_time }분</td>
				</tr>
				<tr>
					<th>요금</th>
					<td>${dto.fare }원</td>
				</tr>
			</table>
			<div class="btn-group">
				<a class="button" href="${path1 }/parking/list.do">주차 현황</a>
				<a class="button" href="${path1 }/parking/carOut.do?park_no=${dto.park_no}">출차</a>
			</div>
	</section>
</body>
</html>