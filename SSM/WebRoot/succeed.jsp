<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>成功</title>
    
    <link rel="stylesheet" href="css/l_succeed.css">
    <script type="text/javascript">
    
//单击提问按钮
function quiz() {
    document.getElementById("Modal-wrapper").style.display = "block";
}

function leaveToLogin() {
   
  window.location.href="login.jsp";
}
      
   
    </script> 
  </head>
  <body>   
  
  <!-- ----- 提问的弹出框 ----- -->
<div class="Modal-wrapper" id="Modal-wrapper">
    <div class="Modal-backdrop"></div>
    <div class="Modal-large">
        <div class="Modal-inner" >

            <!-- 点击关闭按钮，调用hideModel函数 -->
            <span class="guanbi" onclick="leaveToLogin()" >X</span>

            <h3 class="Modal-title">注册成功</h3>
            <div class="Modal-content">
                        <div style="text-align: center; " >
                        <img style="display: inline-block;"src ="image/childsmile.jpg"/ height="200px">
                        </div>
                        <div class="QuestionAsk-section">
                            <div style="text-align: center;  "class="askhead">
                                <font size="5" color="green">欢迎您：${username}</font>  
                            </div>
                        </div>
                        <div class="tijiao">
                            <button class="tijiaobtn" onclick="leaveToLogin()">进入登录界面</button>
                        </div>
              
            </div>
        </div>
    </div>
</div>

<!-- 提问的弹出框结束 -->  
  </body>
</html>
