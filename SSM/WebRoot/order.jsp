<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>��������</title>
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
<!--����-->
 <div class="Usertop">
     <img src="image/logo1.png" id="usertleft">
     <img src="image/UserManager1.png" id="usertright">

 </div>

<!--�в�-->
<div class="Usercenter" >


</div>

<!--���²�-->
<div class="Userleft">
   <div id="lefttopl">
       <div class="uleftname1">&nbsp;&nbsp;&nbsp;�ҵĽ���</div>
       <div class="uleftname2" style="cursor: pointer;" onclick="Onclickdd()">&nbsp;&nbsp;&nbsp;��������</div>
       <div class="uleftname2">&nbsp;&nbsp;&nbsp;�ջ���ַ</div>
   </div >
   <div id="leftcenterl">
       <div class="uleftname1">&nbsp;&nbsp;&nbsp;�ҵ��ʲ�</div>
       <div class="uleftname2">&nbsp;&nbsp;&nbsp;��Ǯ</div>
       <div class="uleftname2">&nbsp;&nbsp;&nbsp;���п�</div>
       <div class="uleftname2">&nbsp;&nbsp;&nbsp;������</div>
       <div class="uleftname2">&nbsp;&nbsp;&nbsp;�Ż�ȯ</div>
       <div class="uleftname2">&nbsp;&nbsp;&nbsp;�����</div>
   </div>
   <div id="leftbottoml">
       <div class="uleftname1">&nbsp;&nbsp;&nbsp;�ҵ��˻�</div>
       <div class="uleftname2" style="cursor: pointer;" onclick="Onclickzl()">&nbsp;&nbsp;&nbsp;�ҵ�����</div>
       <div class="uleftname2">&nbsp;&nbsp;&nbsp;�����˻�</div>
   </div>

</div>

<!--���²�-->
<!--�ܽ���-->
<div class="Userright"  id="panelzh1">
    <div id="urleft">
        <img src="image/avtar.png" id="urlimg">
        <div id="urlzh">${username}</div>
        <div id="urlzl">����������:ȥ����</div>
        <div id="urlaq">�˻���ȫ����:��</div>

    </div>
    <div id="urright">
        <div id="urlxiaoxi">&nbsp;&nbsp;�ҵ���Ϣ</div>
    </div>
    <div id="urbottom">
    <div class="urbl" id="urbl1">
        <div>&nbsp;&nbsp;&nbsp;��Ǯ����******</div>
        <div>&nbsp;&nbsp;&nbsp;�Ż�ȯ:0</div>
        <div>&nbsp;&nbsp;&nbsp;����ȣ�268</div>
        <div>&nbsp;&nbsp;&nbsp;���￨����0.00</div>
    </div>
    <div class="urbl" id="urbl2">
        <div>���ﻨ���ڴ������0.00</div>
        <div>���ö�ȣ���0.00</div>
        <div>�ܶ��:</div>
        <div>������ͨ��>></div>
    </div>
    <div class="urbl"id="urbl3">
        <div>���ﱦ����0.00</div>
        <div>�ҵ�����ܶ��0.00</div>
        <div>��ȥ׬Ǯ�ɣ�>></div>
        <div>����ģ�>></div>
    </div>
    </div>
</div>
<!--��������-->
<div  id="panelzh2" style="visibility: hidden">
    <div class="ordertop">��ͨ����</div>
    
    <div class="itemorders">
     <c:forEach items="${goods}" var="good">
        <div class="itemorderwl">
         <div class="itemorder">
                 <div class="owl1">
                     <div class="ordertitle">
                         <img src="">
                         <div class="orderh">������</div>
                         <div class="ordernum">345${good.id}5346</div>
                         <div class="orderzj">�����ܽ�${good.price}</div>
                     </div>
                 </div>
             <div class="owl2" >
             <div class="odgood">
            <img src="${good.image}" class="oitemimg">
            <div class="oitemname">${good.name}</div>
            <div class="oitemsize">${good.size}</div>
            <div class="oitemprice">��${good.price}</div>
            </div>
             </div>
        </div>
        </div>

</c:forEach>
    </div>

</div>
<!--�ҵ����Ͻ���-->
<div id="panelzh3" style="visibility: hidden">
    <div id="zltop">��������</div>
    <div id="zlcenter">
         <img alt="" src="image/avtar.png">
        <div>��¼����${userinfo.phone}</div>
        <div>���������ȣ�����</div>
    </div>
    <div id="zlbottom">
        <div class="zlitem">�ǳƣ�${userinfo.username}</div>
        <div class="zlitem">�Ա�</div>
        <div class="zlitem">�绰��${userinfo.phone}</div>
        <div class="zlitem">���䣺</div>
        <div class="zlitem">���ڵأ�${userinfo.address}</div>
    </div>
</div>


<div class="bodyimg" >

</div>
</body>
</html>
