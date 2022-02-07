<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이름전달</title>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>     

<h1>이름을 전달합니다.</h1>
<input type=text, id=name>
<!-- <button id=send onclick="click_1()">버튼</button>  -->
<button id=send>버튼</button> 

<textarea id="contents"></textarea>

<script>
	$("#send").on("click", function() {
		console.log("클릭함");
		$.ajax({
			type:"GET",
			url:"/spring/rest/testvalue",
			//success:(data) => {console.log(data); $('#contents').html(data);}
			success: function(data){
				console.log("success");
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