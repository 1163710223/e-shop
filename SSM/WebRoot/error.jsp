<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>���ִ���</title>
    
    <link rel="stylesheet" href="css/l_error.css">
    <script type="text/javascript">
    
//�������ʰ�ť
function quiz() {
    document.getElementById("Modal-wrapper").style.display = "block";
}

function leaveToLogin() {
   
   var str=  document.getElementById("errorLocation");
   //alert(str.value);
   if(str.value=="login")
   {
    window.location.href="login.jsp";
   }
   if(str.value=="signup")
    {
    window.location.href="signup.jsp";
   }
  // window.location.href="login.jsp";
}
      
   
    </script> 
  </head>
  <body>   
  
  <!-- ----- ���ʵĵ����� ----- -->
<div class="Modal-wrapper" id="Modal-wrapper">
    <div class="Modal-backdrop"></div>
    <div class="Modal-large">
        <div class="Modal-inner" >

            <!-- ����رհ�ť������hideModel���� -->
            <span class="guanbi" onclick="leaveToLogin()" >X</span>

            <h3 class="Modal-title">���ֵ�����</h3>
            <div class="Modal-content">
                        <div style="text-align: center; " >
                        <img style="display: inline-block;"src ="image/childcry.jpg"/ height="200px">
                        </div>
                        <div class="QuestionAsk-section">
                            <div style="text-align: center;  border: red solid 1px;"class="askhead">
                                <font size="5" color="red">${errorMessage}!</font>  
                            </div>
                        </div>
                        <div class="tijiao">
                            <button class="tijiaobtn" onclick="leaveToLogin()">֪����</button>
                        </div>
              
            </div>
        </div>
    </div>
</div>

  <input  id="errorLocation" type="text" class="text" value="${errorLocation}" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'PhoneNum';}" >
<!-- ���ʵĵ�������� -->  
  </body>
</html>
