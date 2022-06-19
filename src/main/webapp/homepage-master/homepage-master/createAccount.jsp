<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css"   href="css/main.css">
    <link rel="stylesheet" type="text/css"   href="css/header.css">
    <link rel="stylesheet" type="text/css"   href="css/footer.css">
    <link rel="stylesheet" type="text/css"   href="css/common.css">
    <link rel="stylesheet" type="text/css"   href="css/createAccount.css">
    <link href="img/favicon.ico" rel="shortcut icon" type="image/x-icon">
    <title>Apple</title>
    
    
    <script type="text/javascript">
		
	    function validateForm (form){
			if (form.id.value == ""){
				alert ("아이디를 입력 해주세요");
				form.id.focus();
				return false;
			}
			if(form.password.value == ""){
				alert("비밀번호를 입력해주세요")
				form.password.focus();
				return false;
			}
			
			if (form.name.value == ""){
				alert ("이름를 입력 해주세요");
				form.name.focus();
				return false;
			}
			
			if (form.birth.value == ""){
				alert ("생년월일를 입력 해주세요");
				form.birth.focus();
				return false;
			}
			
			if (form.phone.value == ""){
				alert ("연락처를 입력 해주세요");
				form.phone.focus();
				return false;
			}
			
			if (form.email.value == ""){
				alert ("이메일을 입력 해주세요");
				form.email.focus();
				return false;
			}
			
			if (form.address.value == ""){
				alert ("주소를 입력 해주세요");
				form.address.focus();
				return false;
			}
			
			
		}
	    
	</script>
    
    
    
</head>
<body>

 	<%@ include file="include/header.jsp"  %>


    <main>
        
        	<form action = "createAccount.do" method = "post"   onsubmit = "return validateForm(this);">
        	
	
	            <div class="create">
	    
	                <div class="input">
	                    <input  type="text" name="id" placeholder="ID"> 
	                </div>
	                
	                
	                <br>
	
	                <div class="input">
	                    <input type="password" name="password" placeholder="password">
	                </div>
	                
	                <br>
	                
	                <div class="input">
	                    <input type="text" name="name" placeholder="이름">
	                </div>
	                
	                <br>
	                
	                <div class="input">
	                    <input type="date" name="birth">
	                </div>
	                
	                <br>
	                
	                <div class="input">
	                    <input type="text" name="phone" placeholder="연락처">
	                </div>
	                
	                <br>
	                
	                <div class="input">
	                    <input type="text" name="email" placeholder="이메일">
	                </div>
	                
	                <br>
	                
	                <div class="input">
	                    <input type="text" name="address" placeholder="주소">
	                </div>
	
	
	                <input class="createbtn"  type="submit" value="회원가입">
	    
	            </div>
            
            
            
        	</form>
            
    </main>




	<%@ include file="include/footer.jsp"  %>

</body>
</html>  