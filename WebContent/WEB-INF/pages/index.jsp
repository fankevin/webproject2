<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
    <head>
        <meta charset="UTF-8" />
        <script type="text/javascript" src="<%=basePath %>/resources/js/jquery.min.js"></script>
        <script type="text/javascript">
        
         function login() {
             var name=$("#id1").val();
             var pwd=$("#id2").val();
             $.ajax({
                url:'${contextPath}/login',
                 type:'post',
                 contentType:'application/json',
                 data:JSON.stringify({'username':name,'password':pwd}),
                 dataType:'json',
                 async:false,
                 success:function (msg) {
                	 	console.log(msg);
                     alert("页面内容改变"+msg);
                     alert(name);
 //                    $("#p").text(msg.msg);
                     //window.location.href="success.jsp?id="+Math.random();
                 },
                 error:function () {
                     alert("failure");
                 }
             });
         }
         </script>
        
        
    </head>
    
    <style>
        body {
           background : url(${contextPath}/resources/img/bk.jpg);
            background-size : 100% 100%;
            
        }
    </style>
    <body>
       <form>
	  <%--  // username:<input id="id1" type="text" name="username"/><br>
	    // password:<input id="id2" type="password" name="password"/><br> --%>
	    <input id="id3" type="button" value="登录" onclick="login()"/><br>
	  </form>
	  
	  <embed src="<%=basePath %>/resources/img/storm.mp4"; autostart="true" loop="true" width=100% height=100% >
    </body>
</html>
