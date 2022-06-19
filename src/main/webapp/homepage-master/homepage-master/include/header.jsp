<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <header>
       
        <div class="topmenu">
            <ul>
            	<% if (session.getAttribute("id") == null){  %>
                	<li><a href="login.jsp"><img src="img/login.png" alt=""></a></li>
                	<li><a href="#"><img src="img/search.png" alt=""></a></li>
                <% }else { %>
                	<li><a href="mypage.jsp"><img src="img/login.png" alt=""></a></li>
                	<li><a href="#"><img src="img/search.png" alt=""></a></li>
                	<li>
                	<%= session.getAttribute("name") %> 님 환영합니다  <p>
					<a href="logout.do">[로그아웃]</a>
					</li>
                <% } %>
            </ul>
        </div>
        <div class="logo" >
            <a href="index.jsp"><img src="img/logo.png" alt="로고"></a>
        </div>
        <div class="mainmenu">
            <ul>
                <li><a href="iphone.jsp">iPhone</a></li>
                <li><a href="#">iPad</a></li>
                <li><a href="#">AirPod</a></li>
                <li><a href="#">Watch</a></li>
                <li><a href="#">MAC</a></li>
                <li><a href="qalist.jsp">고객센터</a></li>
            </ul>
        </div>
       
    </header>