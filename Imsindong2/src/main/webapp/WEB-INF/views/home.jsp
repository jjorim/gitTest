<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!!!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<input type="text" id="name" name="name" size="30" maxlength="21">



 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>     
 <script> 
 
 //$("#name").val("122.129.242.61:8880");
 
 genOnlyIpPort("name");
 
 
//Ip:Port Validation
 function genOnlyIpPort (objName) {

 	$("#"+objName).on('focusin', function(){
 	    console.log("Saving value " + $(this).val());
 	    $(this).data('val', $(this).val());
 	});
 	
 	var save_len = false;

	$("#"+objName).keyup(function(event){
        if (!(event.keyCode >=48 && event.keyCode<=40)) {
            var inputVal = $(this).val();
            $(this).val(inputVal.replace(/[^0-9\.\:]/gi,''));  
        }

    	var inputVal = $(this).val();
        
    	// . 3개만 들어가게 하는것
        if ( inputVal.match(/\./g) != null ) {
            if ( inputVal.match(/\./g).length > 3 ) { // 소수점 세번만
            	$(this).val(inputVal.substring(0,inputVal.length -1)); 
            }
        }  
    	
    	// : 한번만 들어가게 하는것
        if ( inputVal.match(/\:/g) != null) {
    		if ( inputVal.match(/\:/g).length > 1) { // : 한번만
    			$(this).val(inputVal.substring(0,inputVal.length -1)); 
    		}

    		if( inputVal.match(/\:/g).length == 1) { // : 이후 포트번호(5자리까지만 제한)
	    		
	    		if(inputVal.length > inputVal.indexOf(":")+6) {
	    			$(this).val(inputVal.substring(0,inputVal.length -1)); 
	    		}
	    	}

    		
        }// inputVal.match null부분
                
    });

    $("#"+objName).on('change',function(){
   	 if(/^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\:([0-9][0-9][0-9][0-9][0-9]?)$/.test($(this).val())){
        	
        } else {
        	console.log("aa");
        	$("#"+objName).val($(this).data('val'));
        }
   })

 	
 	
} // end


 
 
 
 </script>     
      
       
</body>
</html>
