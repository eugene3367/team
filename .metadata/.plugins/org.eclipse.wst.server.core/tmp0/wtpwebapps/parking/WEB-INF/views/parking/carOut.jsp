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
<title>출차</title>
</head>
<body>
<body>
	<div class="content" id="content">
	    <div class="row column text-center">
	      <h2 class="h1">출차</h2>
	      <hr>
	      <div class="container">
	      	<form action="${path1 }/parking/carOut.do" method="post">
			      <table id="table12">
			      	<tbody>
			      		<tr>
			      			<th>출차</th>
			      			<td>
			      				<input type="hidden" name="park_no" id="park_no" value="${dto.park_no }" >
			      				<input type="text" name="car_num" id="car_num" value="${dto.car_num }" required readonly>
			      			</td>
			      		</tr>
			      		<tr>
			      			<th style="background-color:#dcdcdc">입차 시간</th>
			      			<td>
			      				<input type="text" name="in_time" id="in_time" value="${dto.in_time }" required readonly>
			      			</td>
			      		</tr>
			      		<tr>
			      			<td colspan="2">
			      				<input type="submit" value="출차" >
			      				<a class="button" href="${path1 }/parking/list.do">글 목록</a>
			      			</td>
			      		</tr>
			      	</tbody>
			      </table>
			   </form>   
	      </div>
	    </div>
	</div>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
</body>
</html>