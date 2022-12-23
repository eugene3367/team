<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*"%>
<%@ page import="java.text.*, java.net.InetAddress"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원목록</title>
<link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<!-- header css -->
<style>
.topbar-responsive {
	background: #2c3840;
	padding: 1rem 1.5rem;
}

.topbar-responsive .topbar-responsive-logo {
	color: #fefefe;
	vertical-align: middle;
}

.topbar-responsive .menu {
	background: #2c3840;
}

.topbar-responsive .menu li:last-of-type {
	margin-right: 0;
}

.topbar-responsive .menu a {
	color: #fefefe;
	transition: color 0.15s ease-in;
}

.topbar-responsive .menu a:hover {
	color: #c6d1d8;
}

@media screen and (max-width: 39.9375em) {
	.topbar-responsive .menu a {
		padding: 0.875rem 0;
	}
}

.topbar-responsive .menu .topbar-responsive-button {
	color: #fefefe;
	border-color: #fefefe;
	border-radius: 5000px;
	transition: color 0.15s ease-in, border-color 0.15s ease-in;
}

.topbar-responsive .menu .topbar-responsive-button:hover {
	color: #c6d1d8;
	border-color: #c6d1d8;
}

@media screen and (max-width: 39.9375em) {
	.topbar-responsive .menu .topbar-responsive-button {
		width: 100%;
		margin: 0.875rem 0;
	}
}

@media screen and (max-width: 39.9375em) {
	.topbar-responsive {
		padding: 0.75rem;
	}
	.topbar-responsive .top-bar-title {
		position: relative;
		width: 100%;
	}
	.topbar-responsive .top-bar-title span {
		position: absolute;
		right: 0;
		border: 1px solid #fefefe;
		border-radius: 5px;
		padding: 0.25rem 0.45rem;
		top: 50%;
		-webkit-transform: translateY(-50%);
		-ms-transform: translateY(-50%);
		transform: translateY(-50%);
	}
	.topbar-responsive .top-bar-title span .menu-icon {
		margin-bottom: 4px;
	}
}

@
-webkit-keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
-webkit-keyframes slideDown { 0% {
	-webkit-transform: translateY(-100%);
	transform: translateY(-100%);
}

100%
{
-webkit-transform
:
 
translateY
(0%);

            
transform
:
 
translateY
(0%);

  
}
}
@
keyframes slideDown { 0% {
	-webkit-transform: translateY(-100%);
	transform: translateY(-100%);
}

100%
{
-webkit-transform
:
 
translateY
(0%);

            
transform
:
 
translateY
(0%);

  
}
}
@media screen and (max-width: 39.9375em) {
	.topbar-responsive-links {
		-webkit-animation-fill-mode: both;
		animation-fill-mode: both;
		-webkit-animation-duration: 0.5s;
		animation-duration: 0.5s;
		width: 100%;
		-webkit-animation: fadeIn 1s ease-in;
		animation: fadeIn 1s ease-in;
	}
}
</style>
<!-- header css end -->
</head>
<body>
	<nav class="top-bar topbar-responsive">
		<div class="top-bar-title">
			<a class="topbar-responsive-logo" href="/"><strong></strong></a>
		</div>
		<div id="topbar-responsive" class="topbar-responsive-links">
			<div class="top-bar-right">
				<ul class="menu simple vertical medium-horizontal">
					<li><a href="/">Home</a></li>
					<li><a href="${path0 }/parking/carIn.do">입차</a></li>
					<li><a href="${path0 }/parking/list.do">주차현황</a></li>
			        <c:if test="${empty sid }">
			          <li><a href="${path1 }/member/loginForm.do">로그인</a></li>
			          <li><a href="${path1 }/member/agree.do">회원가입</a></li>
			        </c:if>
			        <c:if test="${not empty sid }">  
			          <li><a href="${path1 }/member/logout.do">로그아웃</a></li>
			          <li><a href="${path1 }/member/read.do">회원정보</a></li>
			        </c:if>  
			        <c:if test='${sid eq "admin"}'>
			          <li><a href="#">관리자 페이지</a></li>
			        </c:if>  
				</ul>
			</div>
		</div>
	</nav>
	
    <div class="row column text-center">
      <h2 class="h1">회원 목록</h2>
      <hr>
      <table>
      	<thead>
      		<tr>
      			<th width="80">No</th>
      			<th width="100">ID</th>
      			<th width="100">NAME</th>
      			<th>RegDate</th>
      			<th>Point</th>
      		</tr>
      	</thead>
      	<tbody>
      	<c:forEach items="${memberList }" var="mem" varStatus="status">
      		<tr>
      			<td>${status.count }</td>
      			<td><a href="${path2 }/member/getMember.do?id=${mem.id }">${mem.id }</a></td>
      			<td>${mem.name }</td>
      			<td>${mem.regdate }</td>
      			<td>${mem.pt }</td>
      		</tr>
      	</c:forEach>	
      	</tbody>
      </table>
    </div>
	
</body>
</html>