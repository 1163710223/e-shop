<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>�ɹ�</title>
    
    <link rel="stylesheet" href="css/l_succeed.css">
    <script type="text/javascript">
    
//�������ʰ�ť
function quiz() {
    document.getElementById("Modal-wrapper").style.display = "block";
}

function leaveToLogin() {
   
  window.location.href="login.jsp";
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

            <h3 class="Modal-title">ע��ɹ�</h3>
            <div class="Modal-content">
                        <div style="text-align: center; " >
                        <img style="display: inline-block;"src ="image/childsmile.jpg"/ height="200px">
                        </div>
                        <div class="QuestionAsk-section">
                            <div style="text-align: center;  "class="askhead">
                                <font size="5" color="green">��ӭ����${username}</font>  
                            </div>
                        </div>
                        <div class="tijiao">
                            <button class="tijiaobtn" onclick="leaveToLogin()">�����¼����</button>
                        </div>
              
            </div>
        </div>
    </div>
</div>

<!-- ���ʵĵ�������� -->  
  </body>
</html>
