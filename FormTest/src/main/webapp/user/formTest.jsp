<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이름전달</title>
</head>

<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<h1>버튼을 클릭하여 view와 controller 연결을 확인합니다.</h1>
<button id=send>버튼</button> 

<script>
	$("#send").on("click", function() {
		console.log("클릭함");
		$.ajax({
			type:"GET",
			url:"/spring/rest/testvalue",
			success: function(data){
				console.log("success");
				console.log(data);
			},
			error: function(request,status,error){
				console.log("error");
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
			
			});
	});
</script>

</body>
</html>