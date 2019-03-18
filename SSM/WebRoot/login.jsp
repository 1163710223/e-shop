<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>睿道商城登录</title>
    <link rel="stylesheet" href="css/l_login.css">
    <script>
    /*这个函数得到传过来的用户名和密码，进行判断，后续需要连接数据库得到里面的用户名和密码*/
function  l_loginJudge(Userinfo userinfo) {
    var username = document.getElementById("login-username" );
    var password = document.getElementById("login-password");
    //var frm = document.getElementById("frm" );
    //frm.action="login?username="+username;
   // frm.submit();
}
/*登录界面的关闭按钮，返回主页面*/
function l_close() {
    
    window.location.href="main.jsp";
}
    </script>
</head>
<body>
<script>$(document).ready(function(c) {
    $('.close').on('click', function(c){
        $('.login-form').fadeOut('slow', function(c){
            $('.login-form').remove();
        });
    });
});
</script>
<!--SIGN UP-->
<h1>登录</h1>
<div class="login-form">
    <div class="close" onclick="l_close()"> </div>
    <div class="head-info">
        <label class="lbl-1"> </label>
        <label class="lbl-2"> </label>
        <label class="lbl-3"> </label>
    </div>
    <div class="clear"> </div>
    <div class="avtar">
        <img src="image/avtar.png" height="79" width="79"/>
    </div>
    <form  action="login" method="post">
        <input type="text" name = "username" id="login-username" class="text" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" >
        <div class="key">
            <input type="password" name = "password" id="login-password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
        </div>
   
    <div class="signin" onclick="l_loginJudge()">
        <input type="submit" value="登录" >
    </div>
     </form>
</div>


</body>
</html>