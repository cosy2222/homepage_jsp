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
    <link href="img/favicon.ico" rel="shortcut icon" type="image/x-icon">
    <title>Apple</title>
</head>
<body>

	<%@ include file="include/header.jsp"  %>


    <figure>
        <video src="img/새롭게 선보이는 iPhone 13 Pro   Apple.mp4" autoplay muted loop></video>
    </figure>


    <main>
        <div class="aa">
            <div class="iphone13pro">
                <ul class="name">
                    <li class="title">iPhone13 Pro</li>
                    <li><a href="iphone13pro.jsp">더 알아보기 ></a></li>
                </ul>
                <img src="img/iPhone13 pro.jpg" alt="아이폰13프로">
            </div>

            <div class="ipad">
                <ul class="name">
                    <li class="title">iPad air</li>
                    <li><a href="#">더 알아보기 ></a></li>
                </ul>
                <img src="img/ipad air.jpg" alt="아이패드 에어">
            </div>

            <div class="airpods">
                <ul class="name">
                    <li class="title">AirPods Pro</li>
                    <li><a href="#">더 알아보기 ></a></li>
                </ul>
                <img src="img/airpod.png" alt="에어팟 프로">
            </div>

            <div class="MacBook">
                <ul class="name">
                    <li class="title">MacBook Pro</li>
                    <li><a href="#">더 알아보기 ></a></li>
                </ul>
                <img src="img/MacBook Pro.jpg" alt="맥북 프로">
            </div>
        </div>
            
    </main>
    
    
    <%@ include file="include/footer.jsp"  %>



</body>
</html>