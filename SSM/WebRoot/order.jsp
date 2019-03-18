<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>个人中心</title>
    <link href="css/x_order.css" rel="stylesheet">
   <script>
   function Onclickdd() {
    var e1=document.getElementById("panelzh1");
    var e2=document.getElementById("panelzh2");
    e1.style.visibility="hidden";
    e2.style.visibility="visible";

}
function Onclickzl() {
    var e1=document.getElementById("panelzh1");
    var e2=document.getElementById("panelzh2");
    e2.style.visibility="hidden";
    e1.style.visibility="visible";
}
   
   </script>
  </head>
  <body class="bodyimg">
<!--顶部-->
 <div class="Usertop">
     <img src="image/logo1.png" id="usertleft">
     <img src="image/UserManager1.png" id="usertright">

 </div>

<!--中部-->
<div class="Usercenter" >


</div>

<!--左下部-->
<div class="Userleft">
   <div id="lefttopl">
       <div class="uleftname1">&nbsp;&nbsp;&nbsp;我的交易</div>
       <div class="uleftname2" style="cursor: pointer;" onclick="Onclickdd()">&nbsp;&nbsp;&nbsp;订单管理</div>
       <div class="uleftname2">&nbsp;&nbsp;&nbsp;收货地址</div>
   </div >
   <div id="leftcenterl">
       <div class="uleftname1">&nbsp;&nbsp;&nbsp;我的资产</div>
       <div class="uleftname2">&nbsp;&nbsp;&nbsp;零钱</div>
       <div class="uleftname2">&nbsp;&nbsp;&nbsp;银行卡</div>
       <div class="uleftname2">&nbsp;&nbsp;&nbsp;联名卡</div>
       <div class="uleftname2">&nbsp;&nbsp;&nbsp;优惠券</div>
       <div class="uleftname2">&nbsp;&nbsp;&nbsp;购物币</div>
   </div>
   <div id="leftbottoml">
       <div class="uleftname1">&nbsp;&nbsp;&nbsp;我的账户</div>
       <div class="uleftname2" style="cursor: pointer;" onclick="Onclickzl()">&nbsp;&nbsp;&nbsp;我的资料</div>
       <div class="uleftname2">&nbsp;&nbsp;&nbsp;爱心账户</div>
   </div>

</div>

<!--右下部-->
<!--总界面-->
<div class="Userright"  id="panelzh1">
    <div id="urleft">
        <img src="image/avtar.png" id="urlimg">
        <div id="urlzh">${username}</div>
        <div id="urlzl">资料完整度:去完善</div>
        <div id="urlaq">账户安全级别:低</div>

    </div>
    <div id="urright">
        <div id="urlxiaoxi">&nbsp;&nbsp;我的消息</div>
    </div>
    <div id="urbottom">
    <div class="urbl" id="urbl1">
        <div>&nbsp;&nbsp;&nbsp;零钱余额：￥******</div>
        <div>&nbsp;&nbsp;&nbsp;优惠券:0</div>
        <div>&nbsp;&nbsp;&nbsp;购物比：268</div>
        <div>&nbsp;&nbsp;&nbsp;购物卡：￥0.00</div>
    </div>
    <div class="urbl" id="urbl2">
        <div>购物花本期待还款：￥0.00</div>
        <div>可用额度：￥0.00</div>
        <div>总额度:</div>
        <div>立即开通！>></div>
    </div>
    <div class="urbl"id="urbl3">
        <div>购物宝：￥0.00</div>
        <div>我的理财总额：￥0.00</div>
        <div>快去赚钱吧！>></div>
        <div>活动中心！>></div>
    </div>
    </div>
</div>
<!--订单界面-->
<div  id="panelzh2" style="visibility: hidden">
    <div class="ordertop">普通订单</div>
    
    <div class="itemorders">
     <c:forEach items="${goods}" var="good">
        <div class="itemorderwl">
         <div class="itemorder">
                 <div class="owl1">
                     <div class="ordertitle">
                         <img src="">
                         <div class="orderh">订单号</div>
                         <div class="ordernum">345${good.id}5346</div>
                         <div class="orderzj">订单总金额：${good.price}</div>
                     </div>
                 </div>
             <div class="owl2" >
             <div class="odgood">
            <img src="${good.image}" class="oitemimg">
            <div class="oitemname">${good.name}</div>
            <div class="oitemsize">${good.size}</div>
            <div class="oitemprice">￥${good.price}</div>
            </div>
             </div>
        </div>
        </div>

</c:forEach>
    </div>

</div>
<!--我的资料界面-->
<div id="panelzh3" style="visibility: hidden">
    <div id="zltop">基本资料</div>
    <div id="zlcenter">
         <img alt="" src="image/avtar.png">
        <div>登录名：${userinfo.phone}</div>
        <div>资料完整度：完整</div>
    </div>
    <div id="zlbottom">
        <div class="zlitem">昵称：${userinfo.username}</div>
        <div class="zlitem">性别：</div>
        <div class="zlitem">电话：${userinfo.phone}</div>
        <div class="zlitem">邮箱：</div>
        <div class="zlitem">所在地：${userinfo.address}</div>
    </div>
</div>


<div class="bodyimg" >

</div>
</body>
</html>
