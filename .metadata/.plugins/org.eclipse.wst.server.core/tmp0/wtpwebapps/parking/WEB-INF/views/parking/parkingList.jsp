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
<title>주차 현황</title>
</head>
<body>
	<section class="container">
		<h2>주차 현황</h2>
		<br><hr>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>차량번호</th>
					<th>입차시간</th>
					<th>출차시간</th>
					<th>이용시간(분)</th>
					<th>요금(원)</th>
				</tr>
			</thead>
			<tbody>
      		<c:forEach items="${parkingList }" var="parking" varStatus="status">
      		<tr>
      			<td>${status.count }</td>
      			<td><a href="${path1 }/parking/detail.do?park_no=${parking.park_no }">${parking.car_num }</a></td>
      			<td>${parking.in_time }</td>
      			<td>${parking.out_time }</td>
      			<td>${parking.using_time }분</td>
      			<td>${parking.fare }원</td>
      		</tr>
      	</c:forEach>	
      	</tbody>
		</table>
	</section>
</body>
</html>