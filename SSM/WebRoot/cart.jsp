<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>睿道商城购物车</title>
  <link rel="stylesheet" href="css/x_cart.css">
  </head>
  <body>  
  <!--顶部-->
<div class="Usertop">
    <img src="image/logo1.png" id="usertleft">
    <img src="image/UserManager1.png" id="usertright">
    <div id="usertcenter">购物袋</div>
</div>
<!--中部-->
<div class="Usercenter" >
<!--商品-->
<div id="Goodtable">
    <div id="Goodtltle">
     <div id="gtitle1">精选特卖</div>
     <div id="gtitle2">单价</div>
     <div id="gtitle3">数量</div>
     <div id="gtitle4">小计</div>
    </div>
       <form name = "form"action="clearCart" method="post"> 
    <div id="Gooditems">
    

    <c:forEach items="${goods}" var="good">
    
  
    <div class="Gooditemwl">
     <div class="Gooditem">
         <input type="checkbox" name="ids" value="${good.id}"/>
          
         <img src="${good.image}" id="goodimg">
         <div id="goodname">${good.name}</div>
         <div id="goodsize">${good.size}</div>
         <div class="goodprice" id="goodprice1">￥${good.price}</div>
         <div id="goodnum">1</div>
         <div class="goodzj" id="goodzj1">￥${good.price}</div>
         
     </div>
    </div> 
       <input type="hidden" name="image" value="${good.image}"/>
   <input type="hidden" name="price" value="${good.price}"/>
  </c:forEach>
   

  </div>
   <input type="hidden" name="username" value="${username}"/>


  <div id="jiesuan"><div id="jsan" onclick="javascript:form.submit();">&nbsp;&nbsp;&nbsp;结&nbsp;&nbsp;&nbsp;算</div> </div>
    </form>
    <!--结算-->
  
</div>

</div>

  
   
  </body>
</html>
