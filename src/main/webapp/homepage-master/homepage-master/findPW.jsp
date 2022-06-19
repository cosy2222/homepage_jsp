<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css"   href="css/header.css">
    <link rel="stylesheet" type="text/css"   href="css/footer.css">
    <link rel="stylesheet" type="text/css"   href="css/common.css">
    <link rel="stylesheet" type="text/css"   href="css/login.css">

    <link href="img/favicon.ico" rel="shortcut icon" type="image/x-icon">
    <title>Apple</title>
    
    <script type="text/javascript">
		
	    function validateForm (form){
			if (form.id.value == ""){
				alert ("아이디를 입력 해주세요");
				form.id.focus();
				return false;
			}

		}
	</script>
    
    
    
</head>
<body>

	<%@ include file="include/header.jsp"  %>


    

    <form action = "findPW.do"  method = "post"   onsubmit = "return validateForm(this);">
        <div class="login">
          
            
            	<h2>비밀번호 찾기</h2>


                <div class="input">
                    <input class="id" type="text" name="id" placeholder="ID">
                </div>

               
                <input class="loginbtn"  type="submit" value="확인">


        </div>

    </form>





	<%@ include file="include/footer.jsp"  %>


    

</body>
</html>