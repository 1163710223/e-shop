<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>睿道商城注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
    <!--webfonts-->
    <link href='http://fonts.useso.com/css?family=PT+Sans:400,700,400italic,700italic|Oswald:400,300,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
    <!--//webfonts-->
    <script src="http://ajax.useso.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!--引用css文件-->
    <link rel="stylesheet" href="css/l_signup.css">
    <!--引入js文件-->
    <script >
    
    function l_gotoLogin()
{
    window.location.href="login.jsp";
}
function l_colorChange() {
    var o = document.getElementById("gotoLogin");
    o.style.color = "#ea569a";
}
function l_colorChangeBack() {
    var o = document.getElementById("gotoLogin");
    o.style.color = "white";
}
/*按下注册按钮*/
function l_signup() {
    var username = document.getElementById("signup-username");
    var password = document.getElementById("signup-password");
    var confirmPassword = document.getElementById("signup-confirm-password");
    if(password.value !=confirmPassword.value)
    {
        alert("两次输入的密码不一样");
    }

}
/*注册界面的关闭按钮，返回主页面*/
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
<h1>注册</h1>
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
      <form action="signup" method="post">
       <div class="input">
   
           <div class="username">
               <input name="username" id="signup-username" type="text" class="text" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" >
           </div>
             <div class="phoneNum">
               <input name = "phoneNum" id="signup-phoneNum" type="text" class="text" value="PhoneNum" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'PhoneNum';}" >
           </div>
           <div class="phoneNum">
               <input  name ="address"name = "phoneNum" id="signup-phoneNum" type="text" class="text" value="Address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Address';}" >
           </div>
           <div class="key">
               <!--onfocus="this.value = '';"当鼠标移动到这里是，内容清空-->
               <input name="password" id="signup-password" type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
           </div>
           <div class="key">
               <input id="signup-confirm-password" type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
           </div>
       </div>

    <div class="signup" onclick="l_signup()">
        <input type="submit" value="注册" >
    </div>
      </form>
    <div id="gotoLogin" class="gotoLogin" onclick="l_gotoLogin()" align="right" onmousemove="l_colorChange()" onmouseout="l_colorChangeBack()">
        已经有账号，直接登录
    </div>
</div>
</body>
</html>