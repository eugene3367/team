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
<title>입차</title>
</head>
<body>
	<!-- ajax?? -->
	<form>
    	<input type="text" id="car_num" placeholder="차량번호입력">
    	<button type="button" id="carIn">입차</button><br>
    	<label id="result">입차대기</label>
    </form>
    
    <form action="${path1 }/parking/carIn.do" method="post">
    	<input type="text" name="car_num" id="car_num" placeholder="차량번호입력">
    	<input type="submit" value="입차">
    </form>
    <br>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<!-- ajax 처리 test 아직 작동안됨 -->
<script>
    $(document).ready(function(){
        $( "carIn" ).click(function() {
            $.ajax({
                type: "POST",
                url: "${path1 }/parking/carIn.do",
               	data: $("#car_num"),
               	dataType: "text",
                success: function(response) {
                    $('#result').text("입차 성공");
                },
                error: function(err) {
                    console.log("오류발생");
                }
            });
        });
    });
</script>
</body>
</html>