<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
<head>
   
    <title>睿道商城</title>
    
    <!--引用css文件-->
    
    <link rel="stylesheet" type="text/css"  href="css/l_main.css" /> 
     <link rel="stylesheet" href="css/body.css">
    <link rel="stylesheet" href="css/n_main.css">
     <link rel="stylesheet" href="css/n_css1.css">
    <link rel="stylesheet" href="css/s_main.css">
        <link rel="stylesheet" href="css/shophome.css">
    <link rel="stylesheet" href="css/x_main.css">
    <link rel="stylesheet" href="css/z_main_footer.css">
    <!--引用js文件-->
    
    <script type="text/javascript" src="http://ajax.microsoft.com/ajax/jquery/jquery-1.4.min.js"></script>
    <script src="js/jquery-1.11.1.min.js" charset="utf-8"></script>
    <script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script> 
    <script src="js/shophomejs.js"></script> 
    <script type="text/javascript">
        function func1(id) {
        var o=document.getElementById(id);
        o.style.display="block";
    }
    function func2(id) {
        var o=document.getElementById(id);
        o.style.display="none";
    }
      function l_login() {
      window.location.href="login.jsp";
     }
    function l_signup() {
        window.location.href="signup.jsp";
      }    

      function confirmStatus()
      {//获取后台参数给s2变量，<%%>表示这范围内是服务器解析的语言
         <%  
          String username = (String)request.getParameter("username");
          String newUsername = "";
          if(username!=null)
          {
           newUsername = new String(username.getBytes("iso-8859-1"),"gbk");
          }          
          %>        
             var name = '<%=newUsername%>';//输出s2给js变量s
             var o = document.getElementById("plogin");
             if(name!="")
             {
            o.innerHTML="欢迎您";
             }
             
      }
    
         function l_my_order()
           {       
           var name = '<%=newUsername%>';//输出s2给js变量s

             if(name=="")
             {
                 window.location.href="login.jsp";
             }else{
             location.href="order.jsp";
             
             }
         }
         
          function l_checkin()
           {       
           var name = '<%=newUsername%>';//输出s2给js变量s
  
             if(name=="")
             {
                 window.location.href="login.jsp";
             }
             
             //else{
             //window.location.href="checkin.jsp";
             //}
         }
         
     
     
     function oMover1(){
    var element=document.getElementById('p1');
    element.src="image/ps1.jpg"

}
function oMover1(){
    var element=document.getElementById('p1');
    element.src="image/picturec1.jpg"

}
function oMout1() {
    var element=document.getElementById('p1');
    element.src="image/picture1.jpg";
}
function oMover2() {
    var element=document.getElementById('p2');
    element.src="image/picturec2.jpg";
}
function oMout2() {
    var element=document.getElementById('p2');
    element.src="image/picture2.jpg";
}
function oMover3() {
    var element=document.getElementById('p3');
    element.src="image/picturec3.jpg";
    p3c.style.visibility="visible";
}
function oMout3() {
    var element=document.getElementById('p3');
    element.src="image/picture3.jpg";
    p3c.style.visibility="hidden";

}
function oMover4() {
    var element=document.getElementById('p4');
    element.src="image/picturec4.jpg";
    p4c.style.visibility="visible";

}
function oMout4() {
    var element=document.getElementById('p4');
    element.src="image/picture4.jpg";
    p4c.style.visibility="hidden";
}
function oMover5() {
    var element=document.getElementById('p5');
    element.src="image/picturec5.jpg";
    p5c.style.visibility="visible";
}
function oMout5() {
    var element=document.getElementById('p5');
    element.src="image/picture5.jpg";
    p5c.style.visibility="hidden";
}
function oMover6() {
    var element=document.getElementById('p6');
    element.src="image/picturec6.jpg";
    p6c.style.visibility="visible";
}
function oMout6() {
    var element=document.getElementById('p6');
    element.src="image/picture6.jpg";
    p6c.style.visibility="hidden";
}
function oMover7() {
    var element=document.getElementById('p7');
    element.src="image/picturec7.jpg";
    p7c.style.visibility="visible";
}
function oMout7() {
    var element=document.getElementById('p7');
    element.src="image/picture7.jpg";
    p7c.style.visibility="hidden";
}
function oMover8() {
    var element=document.getElementById('p8');
    element.src="image/picturec8.jpg";
    p8c.style.visibility="visible";
}
function oMout8() {
    var element=document.getElementById('p8');
    element.src="image/picture8.jpg";
    p8c.style.visibility="hidden";
}
function oMovershopbut(){
    var element=document.getElementsByClassName('shop-but');
    for(i=0;i<element.length;i++)
        element[i].style.cursor="pointer";
}

function onClickbut(){
    var element=document.getElementsByClassName('panel');
    for(i=0;i<element.length;i++)
        element[i].style.visibility="hidden";
    var element1=document.getElementsByClassName("outpanel");
    for(i=0;i<element1.length;i++)
        element1[i].style.visibility="hidden";

}

function onClickrail1() {
    var  element=document.getElementsByClassName('rail1');
    element[0].style.visibility="visible";

}
function onClickrail2() {
    var  element=document.getElementsByClassName("panel");
    element[0].style.visibility="visible";
    var element1=document.getElementsByClassName("outpanel");
    for(i=0;i<element1.length;i++)
        element1[i].style.visibility="visible";

}
function onClickrail3() {
    var  element=document.getElementsByClassName("panel");
    element[1].style.visibility="visible";
    var element1=document.getElementsByClassName("outpanel");
    for(i=0;i<element1.length;i++)
        element1[i].style.visibility="visible";

}
function onClickrail4() {
    var  element=document.getElementsByClassName("panel");
    element[2].style.visibility="visible";
    var element1=document.getElementsByClassName("outpanel");
    for(i=0;i<element1.length;i++)
        element1[i].style.visibility="visible";
}
function onClickrail5() {
    var  element=document.getElementsByClassName("panel");
    element[3].style.visibility="visible";
    var element1=document.getElementsByClassName("outpanel");
    for(i=0;i<element1.length;i++)
        element1[i].style.visibility="visible";
}
function onClickrail6() {
    var  element=document.getElementsByClassName("panel");
    element[4].style.visibility="visible";
    var element1=document.getElementsByClassName("outpanel");
    for(i=0;i<element1.length;i++)
        element1[i].style.visibility="visible";
}
function onClickrail7() {
    var  element=document.getElementsByClassName('rail7');

}
function onClickrail8() {
    var  element=document.getElementsByClassName('rail8');
    document.documentElement.scrollTop = document.body.scrollTop = 0;

}


function oMoverbrandimg1(id){
    var element=document.getElementById(id);
    element.style.visibility="visible";
}

function oMoutbrandiexp1(){
    var element=document.getElementById('brand-cloth1');
    element.style.visibility="hidden";

}
function oMoverbrandimg2(){
    var element=document.getElementById('brand-cloth2');
    element.style.visibility="visible";
}

function oMoutbrandiexp2(){
    var element=document.getElementById('brand-cloth2');
    element.style.visibility="hidden";

}
function oMoverbrandimg3(){
    var element=document.getElementById('brand-cloth3');
    element.style.visibility="visible";
}

function oMoutbrandiexp3(){
    var element=document.getElementById('brand-cloth3');
    element.style.visibility="hidden";

}
     
   </script>
</head>
<body onload="confirmStatus()">

<div class ="header">
    <div class="header-inner" >
        <div class="header-select">
            <select class="location">
                <option value ="haerbin">哈尔滨</option>
                <option value ="shenyang">沈阳</option>
                <option value="changchun">长春</option>
                <option value="beijing">北京</option>
            </select>
        </div>

        <div class="header-menu">
            <div id="main-login" class="log-in" onclick="l_login()" ><span id ="plogin" >请登录</span> ${username}</div>
            <div class="sign-up" onclick="l_signup()">注册</div>
             <form  name = "form6" method="post" action="checkin"> 
                     <input type="hidden" name="username" value="${username}"/>   
                        <div class="check-in"  onclick="javascript:form6.submit();" >签到有礼</div>
            </form>
          
            <form  name = "form3" method="post" action="queryOrderByUsername"> 
                     <input type="hidden" name="username" value="${username}"/>   
                      <div class="my-order" onclick="javascript:form3.submit();" >我的订单</div>
            </form>
            <div class="my-sale">
                <span>我的特卖</span>
                <div class="my-sale-content">
                    <a href="#">品牌收藏</a><br>
                    <a href="#">商品收藏</a><br>
                    <a href="#">我的足迹</a><br>
                </div>
            </div>
            <div class="Member-club">
                <span>会员俱乐部</span>
                <div class="Member-club-content">
                    <a href="#">俱乐部首页</a><br>
                    <a href="#">唯品币兑换</a><br>
                    <a href="#">免费抽大奖</a><br>
                </div>
            </div>
            <div class="customer-service">
                <span>客户服务</span>
                <div class="customer-service-content">
                    <a href="#">联系客服</a><br>
                    <a href="#">帮助中心</a><br>
                    <a href="#">服务中心</a><br>
                    <a href="#">知识产权投诉</a><br>
                </div>
            </div>
            <div class="mobile">
                <span>手机版</span>
                <div class="mobile-content">
                    <a href="#" ><img src="image/qrimage.jpg" width="150" height="150"/></a><br>
                    <span>随时逛 及时抢</span>
                </div>
            </div>

        </div>
        <div>
            <div class="header-more">
                <span>更多</span>
                <div class="header-more-content">
                    <a href="#">合作专区</a><br>
                    <a href="#">联名卡申请</a>
                    <a href="#">唯品卡</a>
                    <a href="#">支付专区</a><br>
                    <a href="#">关于我们</a><br>
                    <a href="#">Sell on vip</a>
                    <a href="#">品牌招商</a>
                    <a href="#">官方博客</a>
                </div>
            </div>
            
        </div>
    </div>
</div>




<div class="search">
    <div class="logo1">
        <img src="image/logo1.png" alt="" width="179" height="98">
    </div>
    <div class="logo2">
        <img src="image/logo2.png" alt="" width="365" height="87" >
    </div>

    <div id="s_box">
         <form  name = "form" method="post" action="queryByKind"> 
        <input class="s_input" type="text" name="kind" placeholder="大家都在搜:女装">    
        <input type="hidden" name="username" value="${username}"/>   
        <div id="s_search" onclick="javascript:form.submit();"> 搜索</div>
          </form>
        <div>
          <form  name = "form1" method="post" action="queryByUsernameInCart"> 
        <input type="hidden" name="username" value="${username}"/>   
        <button class="cart" onclick="javascript:form1.submit();">购物车</button>
          </form>
            
        </div>
       
    </div>
    
    </div>

<!--石昊-->
<div class="shihao">
    <div class="fenlei" id="s_test">
        <div class="s_nav">
            <a href="#">首页</a>
            <a href="#">女装</a>
            <a href="#">母婴</a>
            <a href="#">美妆</a>
            <a href="#">国际</a>
            <a href="#">男装</a>
            <a href="#">居家</a>
            <a href="#">鞋包</a>
            <a href="#">运动</a>
            <a href="#">生活</a>
        </div>
        <div class="nav1">
            <img src="image/1470377526197.png" alt="" class="p1">
            <a href="#" class="p1">分类  </a>
            <img src="image/1470377501079.png" alt="" class="p1">
            <a href="#" class="p1"> 预告</a>
        </div>

    </div>
    <div class="tuijian">
        <div class="banner">
            <ul class="pic">
                <li>
                    <a href="#"><img src="image/s-1.jpg" height="400" width="1146"/></a>
                </li>
                <li>
                    <a href="#"><img src="image/s-2%20(1).jpg" height="400" width="1146"/></a>
                </li>
                <li>
                    <a href="#"><img src="image/s-3.jpg" height="400" width="1146"/></a>
                </li>

            </ul>
            <ul class="anniu">
                <li class="on"></li>
                <li></li>
                <li></li>

            </ul>
            <ul class="lr">
                <li class="pre"><a href="#">  </a></li>
                <li class="next"><a href="#">  </a></li>
            </ul>
        </div>
        <script >$(function(){
            //鼠标滑过banner，左右按钮进行显示和隐藏
            $(".banner").hover(function(){
                $(".lr").show();
            },function(){
                $(".lr").hide();
            });
            //点击下面的小按钮，图片进行左右切换效果
            $(".anniu li").click(function(){
                $(this).addClass("on").siblings().removeClass("on");
                var num=$(this).index();
                $(".pic").animate({marginLeft:-1000*num},"slow");
            });
            //图片自动轮播效果
            var a=0;
            var automatic=setInterval(function(){
                a++;
                a=a%3;
                $(".pic").animate({marginLeft:-1000*a},"slow");
                $(".anniu li").eq(a).addClass("on").siblings().removeClass("on");
            },6000);
            //点击左右按钮，图片进行切换效果
            $(".pre").click(function(){
                a--;
                a=(a+3)%3;
                $(".pic").animate({marginLeft:-1000*a},"slow");
                $(".anniu li").eq(a).addClass("on").siblings().removeClass("on");
            });
            $(".next").click(function(){
                a++;
                a=a%3;
                $(".pic").animate({marginLeft:-1000*a},"slow");
                $(".anniu li").eq(a).addClass("on").siblings().removeClass("on");
            });
        });</script>
    </div>
</div >


<!--牛庆立-->
<div class="main">
    <div class="n_ch">品牌专区</div>
    <div onmouseover="func1(1)" onmouseout="func2(1)" class="it">
        <div   class="up" id="1">
            <div class="up_nr">
                <div class="img">
                    <img src="images/1738895588-247211677893849088-50_5t_235x297_90.jpg" />
                    <a class="pay" href="">￥348</a>
                </div>
                <div class="img">
                    <img src="images/1446598215-93526335290908672-50_5t_235x297_90.jpg" />
                    <a class="pay" href="">￥347</a>
                </div>
                <div class="img">
                    <img src="images/1401963026-18653983718158336-50_5t_235x297_90.jpg" />
                    <a class="pay" href="">￥345</a>
                </div>
                <a class="rukou" href="">进入专场</a>
            </div>
        </div>
        <div class="bt">
            <img class="imgb" src="images/ias_153355146177619_570x273_90.jpg"/>
            <div class="info">
                <img class="shangbiao"  src="images/primary_xie.png" height="40" width="80"/>
                <a class="title" href="#">鞋逅，不止是鞋</a>
                <span class="dec">男人的鞋柜，折上折</span>
            </div>
        </div>
    </div>

    <div  onmouseover="func1(2)" onmouseout="func2(2)" class="it">
        <div    class="up" id="2">
            <div class="up_nr">
                <div class="img" >
                    <img src="images/500d5362-2c54-401c-83b2-c118b8eeabe7_t_235x297_90.jpg" />
                    <a class="pay" href="">￥98</a>
                </div>
                <div class="img" >

                    <img src="images/911576fa-8d0b-40a8-8b3d-4f5b44c5f614_t_235x297_90.jpg" />
                    <a class="pay" href="">￥98</a>
                </div>
                <div class="img" ><img src="images/abd8c543-1664-419e-9e10-9b7f4a1462f2_t_235x297_90.jpg"/>
                    <a class="pay" href="">￥98</a>
                </div>              
                <a class="rukou" href="" >进入专场</a>
            </div>
        </div>
        <div class="bt">

            <img class="imgb" src="images/PC_rvmz.jpg"/>
            <div class="info">
                <img class="shangbiao"  src="images\2.png"/>
                <a class="title" href="#">时尚体验</a>
                <span class="dec">不要998，啥都98</span>
            </div>
        </div>
    </div>

    
    <div  onmouseover="func1(3)" onmouseout="func2(3)" class="it">
        <div    class="up" id="3">
            <div class="up_nr">
                <div class="img">

                    <img src="images/1b4cd858-476b-4314-906c-198342f6cdaa_t_235x297_90.jpg"/>
                    <a class="pay" href="">￥348</a>
                </div>
                <div class="img">


                    <img src="images/4d9f0205-b48f-47d4-b3d9-733e45c0d3d7_t_235x297_90.jpg"/>
                    <a class="pay" href="">￥347</a>
                </div>
                <div class="img">
                    <img src="images/7649ba9c-5324-4745-957e-09f63e999f60_t_235x297_90.jpg" />
                    <a class="pay" href="">￥345</a>
                </div>
                <a class="rukou" href="">进入专场</a>
            </div>
        </div>
        <div class="bt">

            <img class="imgb" src="images/1533293453477.jpg"/>
            <div class="info">
                <img class="shangbiao"  src="images/primary3.png"/>
                <a class="title" href="#">轻奢狂欢，不止1折</a>
                <span class="dec">1件打7折，2件打5折</span>
            </div>
        </div>
    </div>
    <div  onmouseover="func1(4)" onmouseout="func2(4)" class="it">
        <div    class="up" id="4">
            <div class="up_nr">
                <div class="img">


                    <img src="images/2728e680-41b8-4020-97e7-ead491b737e6_235x297_90.jpg"/>
                    <a class="pay" href="">￥168</a>
                </div>
                <div class="img">


                    <img src="images/bafad6c5-3b71-4e5e-aa85-04b61304e82f_235x297_90.jpg" />
                    <a class="pay" href="">￥219</a>
                </div>
                <div class="img">


                    <img src="images/d66ed732-7a4e-4b37-b670-138c3e81e413_235x297_90.jpg"/>
                    <a class="pay" href="">￥99</a>
                </div>
                <a class="rukou" href="">进入专场</a>
            </div>
        </div>
        
        
        <div class="bt">

            <img class="imgb" src="images/PC2_ernz.jpg"/>
            <div class="info">
                <img class="shangbiao"  src="images\primary4.png"/>
                <a class="title" href="#">乐享潮雅时尚生活</a>
                <span class="dec">满1件打4折，满3件打3.5折</span>
            </div>
        </div>
    </div>
    <div  onmouseover="func1(5)" onmouseout="func2(5)" class="it">
        <div    class="up" id="5">
            <div class="up_nr">
                <div class="img">

                    <img src="images/99b97461-113b-476b-afd0-7c4a1776cb00_5t_235x297_90.jpg" />
                    <a class="pay" href="">￥348</a>
                </div>
                <div class="img">
                    <img src="images/9319a93b-f43b-4561-bfa5-40f30e4d09a6_5t_235x297_90.jpg" />
                    <a class="pay" href="">￥347</a>
                </div>
                <div class="img">

                    <img src="images/d05b131b-0225-4466-be35-2c0a54948e45_5t_235x297_90.jpg" />
                    <a class="pay" href="">￥345</a>
                </div>
                <a class="rukou" href="">进入专场</a>
            </div>
        </div>
        <div class="bt">

            <img class="imgb" src="images\ias_153267756775821_570x273_90.jpg"/>
            <div class="info">
                <img class="shangbiao"  src="images\primary_jiaju.png"/>
                <a class="title" href="#">明星同款。相约新履</a>
                <span class="dec"></span>
            </div>
        </div>
    </div>
    <div  onmouseover="func1(6)" onmouseout="func2(6)" class="it">
        <div    class="up" id="6">
            <div class="up_nr">
                <div class="img">

                    <img src="images/4e7f1257-fa20-4bd5-a8d5-7ab12e1f3b76_5t_235x297_90.jpg" height="297"
                         width="235"/><a class="pay" href="">￥348</a>
                </div>
                <div class="img">


                    <img src="images/4c02a991-4adf-49d4-90f1-5fb5eb6bb02e_5t_235x297_90.jpg" height="297"
                         width="235"/><a class="pay" href="">￥347</a>
                </div>
                <div class="img">

                    <img src="images/d277cd5e-93f7-438a-a605-b8fd3fbd36d7_5t_235x297_90.jpg" height="297"
                         width="235"/><a class="pay" href="">￥345</a>
                </div>
                <a class="rukou" href="">进入专场</a>
            </div>
        </div>
        <div class="bt">

            <img class="imgb" src="images/ias_153354140581870_570x273_90.jpg"/>
            <div class="info">
                <img class="shangbiao"  src="images/primary_my.png"/>
                <a class="title" href="#">童趣世界</a>
                <span class="dec">1件8折，2件7折</span>
            </div>
        </div>
    </div>
    <div  onmouseover="func1(7)" onmouseout="func2(7)" class="it">
        <div    class="up" id="7">
            <div class="up_nr">
                <div class="img">

                    <img src="images/DW00100030-5_235x297_90.jpg" height="297" width="235"/><a class="pay" href="">￥348</a>
                </div>
                <div class="img">


                    <img src="images/DW00100039-5_235x297_90.jpg" height="297" width="235"/><a class="pay" href="">￥347</a>
                </div>
                <div class="img">

                    <img src="images/DW00100215-5_235x297_90.jpg" height="297" width="235"/><a class="pay" href="">￥345</a>
                </div>
                <a class="rukou" href="">进入专场</a>
            </div>
        </div>
        <div class="bt">

            <img class="imgb" src="images\ias_152956725428565_570x273_90.jpg"/>
            <div class="info">
                <img class="shangbiao"  src="images/primary_shoubiao.png"/>
                <a class="title" href="#">亲密关系，一表真情</a>
                <span class="dec">全程折上88折</span>
            </div>
        </div>
    </div>
    <div  onmouseover="func1(8)" onmouseout="func2(8)" class="it">
        <div    class="up" id="8">
            <div class="up_nr">
                <div class="img">

                    <img src="images/6db97c1b-5888-4592-b6b8-a5036d9085d1_235x297_90.jpg" height="297"
                         width="235"/><a class="pay" href="">￥348</a>
                </div>
                <div class="img">


                    <img src="images/96e02e3c-b6c6-4947-a623-cbae8b5143eb_235x297_90.jpg" height="297"
                         width="235"/><a class="pay" href="">￥347</a>
                </div>
                <div class="img">

                    <img src="images/c1516352-39ff-4bd1-baf7-d25d972895ca_235x297_90.jpg" height="297"
                         width="235"/><a class="pay" href="">￥345</a>
                </div>
                <a class="rukou" href="">进入专场</a>
            </div>
        </div>
        <div class="bt">

            <img class="imgb" src="images\PC_hsoc.jpg"/>
            <div class="info">
                <img class="shangbiao"  src="images/primary8.png"/>
                <a class="title" href="#">专享好货，精美来袭</a>
                <span class="dec"></span>
            </div>
        </div>
    </div>
    <div  onmouseover="func1(9)" onmouseout="func2(9)" class="it">
        <div    class="up" id="9">
            <div class="up_nr">
                <div class="img">

                    <img src="images/075609007415-5_235x297_90.jpg" height="297"
                         width="235"/><a class="pay" href="">￥348</a>
                </div>
                <div class="img">


                    <img src="images/075609018268-5_235x297_90.jpg" height="297"
                         width="235"/><a class="pay" href="">￥347</a>
                </div>
                <div class="img">

                    <img src="images/075609037009-5_235x297_90.jpg" height="297"
                         width="235"/><a class="pay" href="">￥345</a>
                </div>
                <a class="rukou" href="">进入专场</a>
            </div>
        </div>
        <div class="bt">

            <img class="imgb" src="images\ias_153173488622282_570x273_90.jpg"/>
            <div class="info">
                <img class="shangbiao"  src="images/primary_guoji.png"/>
                <a class="title" href="#">百年匠心，大牌钜惠</a>
                <span class="dec">满199减30，满399减120</span>
            </div>
        </div>
    </div>
    <div  onmouseover="func1(10)" onmouseout="func2(10)" class="it">
        <div    class="up" id="10">
            <div class="up_nr">
                <div class="img">

                    <img src="images/8801042567412-5_235x297_90.jpg" height="297" width="235"/><a class="pay" href="">￥348</a>
                </div>
                <div class="img">


                    <img src="images/8801042567429-5_235x297_90.jpg" height="297" width="235"/><a class="pay" href="">￥347</a>
                </div>
                <div class="img">

                    <img src="images/8806390565530-5_235x297_90.jpg" height="297" width="235"/><a class="pay" href="">￥345</a>
                </div>
                <a class="rukou" href="">进入专场</a>
            </div>
        </div>
        <div class="bt">

            <img class="imgb" src="images\804_uxmp.jpg"/>
            <div class="info">
                <img class="shangbiao"  src="images/primary10.png"/>
                <a class="title" href="#">参肌焕活，秀美如初</a>
                <span class="dec">敢买就敢送</span>
            </div>
        </div>
    </div>
</div>


<!-- 张凌宇 -->
<div id="footer" class="footer">
    <div class="footer-icon">
        <img src="image/标签.png" alt="">
    </div>
    <br>
    <div class="footer-list">
        <dl class="link-anim">
            <dt>服务保障</dt>
            <dd>
                <a href="https://viva.vip.com/act/supportInsurance?wapid=vivac_767" target="_blank"
                   rel="nofollow">正品保证</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/commitment.php" target="_blank" rel="nofollow">7天无理由放心退</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/commitment.php" target="_blank" rel="nofollow">退货返运费</a>
            </dd>
            <dd>
                <a href="https://acs.vip.com/" target="_blank" rel="nofollow">7x15小时客户服务</a>
            </dd>
            <dd>
                <a href="https://viva.vip.com/act/changeProduct-pc?wapid=vivac_825" target="_blank"
                   rel="nofollow">7天无理由随心换</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="link-anim">
            <dt>购物指南</dt>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=308" target="_blank"
                   rel="nofollow">导购演示</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=330" target="_blank"
                   rel="nofollow">订单操作</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=206" target="_blank"
                   rel="nofollow">会员注册</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=329" target="_blank"
                   rel="nofollow">账户管理</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=104" target="_blank"
                   rel="nofollow">收货样品</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?cid=69" target="_blank" rel="nofollow">会员等级</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="link-anim">
            <dt>支付方式</dt>
            <dd>
                <a href="https://mst.vip.com/ByMIo4p5mM1-pZjNGBTysQ.php?client=vipcms&amp;wapid=mst_2667903&amp;extra_type=1"
                   target="_blank" rel="nofollow">快捷支付</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=336" target="_blank"
                   rel="nofollow">23家主流网银支付</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?cid=37" target="_blank" rel="nofollow">货到付款</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=336" target="_blank"
                   rel="nofollow">支付宝、银联等支付</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=336" target="_blank"
                   rel="nofollow">信用卡支付</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=335" target="_blank"
                   rel="nofollow">零钱支付</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="link-anim">
            <dt>配送方式</dt>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=345" target="_blank" rel="nofollow">全场满288元免运费</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=345" target="_blank"
                   rel="nofollow">配送范围及运费</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=63" target="_blank"
                   rel="nofollow">验货与签收</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="link-anim">
            <dt>售后服务</dt>
            <dd>
                <a href="https://help.vip.com/themelist.php?cid=74" target="_blank" rel="nofollow">退货政策</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=236" target="_blank"
                   rel="nofollow">退货流程</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=317" target="_blank"
                   rel="nofollow">退款方式和时效</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?cid=146" target="_blank" rel="nofollow">换货服务</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="tc last">
            <dt>睿道商城APP二维码</dt>
            <dd>
                <img class="lazy" src="image/qrimage.jpg" width="100" height="100" alt="睿道商城APP二维码">
            </dd>
            <dd>下载唯品会移动APP</dd>
        </dl>
    </div>
    <br>
    <div class="footer-infor">
        <p class="footer-infor-link">
            <a target="_blank" rel="nofollow" href="https://viva.vip.com/act/supportContact-pc?wapid=vivac_806"
               title="关于我们">关于我们</a>|
            <a target="_blank" rel="nofollow" href="https://viva.vip.com/act/supportContactEn-pc?wapid=vivac_799"
               title="About us">About us</a>|
            <a target="_blank" rel="nofollow" href="http://ir.vip.com/" title="Investor Relations">Investor
                Relations</a>|
            <a target="_blank" rel="nofollow" href="https://blog.vip.com/?r=/Blog/HTML_showList/sort_id//29"
               title="媒体报道">媒体报道</a>|
            <a target="_blank" rel="nofollow" href="https://vis.vip.com/stipulate/" title="品牌招商">品牌招商</a>|
            <a target="_blank" rel="nofollow" href="https://viva.vip.com/act/supportPrivacy-pc?wapid=vivac_804"
               title="隐私条款">隐私条款</a>|
            <a target="_blank" rel="nofollow" href="http://job.vip.com/" title="唯品诚聘">唯品诚聘</a>|
            <a target="_blank" rel="nofollow" href="https://viva.vip.com/act/supportFoundationIndex-pc?wapid=vivac_807"
               title="365爱心基金">365爱心基金</a>|
            <a target="_blank" rel="nofollow" href="https://vipcard.vip.com/" title="唯品卡">唯品卡</a>|
            <a target="_blank" href="https://viva.vip.com/act/supportContactUs-pc?wapid=vivac_800" title="联系我们">联系我们</a>
        </p>
        <p class="footer-infor-txt">
            Copyright ? 2008-2018 vip.com，All Rights Reserved&nbsp;&nbsp;使用本网站即表示接受<a rel="nofollow"
                                                                                      href="https://viva.vip.com/act/supportClause-pc?wapid=vivac_802">唯品会用户协议</a>。版权所有
            <a rel="nofollow" href="https://www.vip.com/">广州唯品会电子商务有限公司</a><br><a
                href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44010302111111" target="_blank"><img
                src="../image/police_icon.png" width="14" height="14" style="margin:2px 3px 0 0;">粤公网安备
            44010302111111号</a>&nbsp;&nbsp;<a rel="nofollow"
                                              href="http://www.miibeian.gov.cn/publish/query/indexFirst.action">粤ICP备08114786号</a>
            <a rel="nofollow" target="_blank"
               href="https://viva.vip.com/act/actValueAddedService-pc">增值业务经营许可证：粤B2-20170777 </a><a
                rel="nofollow"
                href="http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/61e6abe320e7462baf61aab32a67f256">网络文化经营许可证：粤网文〔2015〕1528-229</a><br><a
                rel="nofollow" href="https://viva.vip.com/act/actBusinessLicense-pc?wapid=vivac_813">自营主体经营证照</a>&nbsp;&nbsp;<a
                href="https://help.vip.com/themelist.php?type=detail&amp;id=475" target="_blank"
                rel="nofollow">风险监测信息</a>&nbsp;&nbsp;<a rel="nofollow"
                                                        href="https://viva.vip.com/act/actDrugLicense-pc?wapid=vivac_814">互联网药品交易服务资格证（粤C20140002）</a>
        </p>
    </div>
</div>


<!--夏崇珺-->
<div class="xcj">

    <!-- 悬着栏框-->
    <div class="DD" id="D-lan" >
     <!--账户-->
<div class="rail1" onmouseover="oMover1()" onmouseout="oMout1()">
    <a target="_blank"  href="../index3.html">
        <img src="image/picture1.jpg" id="p1" width="28px" height="28px">
    </a>
</div>
<!--购物车-->
<div class="rail2"  onmouseover="oMover2()" onmouseout="oMout2()" onclick="onClickrail2()">

    <img src="image/picture2.jpg" id="p2">

</div>
<!--优惠券-->
<div class="rail3" onmouseover="oMover3()" onmouseout="oMout3()" onclick="onClickrail3()">
    <div>
        <img src="image/loc1.jpg" id="p3c" style="visibility: hidden" width="28px">
    </div>

    <img src="image/picture3.jpg" id="p3">


</div>
<!--品牌收藏-->
<div class="rail4" onmouseover="oMover4()" onmouseout="oMout4()" onclick="onClickrail4()">
    <div  >
        <img src="image/loc2.jpg" id="p4c" style="visibility: hidden">
    </div>

    <img src="image/picture4.jpg" id="p4">

</div>
<!--商品收藏-->
<div class="rail5" onmouseover="oMover5()" onmouseout="oMout5()" onclick="onClickrail5()">
    <div  >
        <img src="image/loc3.jpg" id="p5c" style="visibility: hidden">
    </div>

    <img src="image/picture5.jpg" id="p5">


</div>
<!--我的足迹-->
<div class="rail6" onmouseover="oMover6()" onmouseout="oMout6()" onclick="onClickrail6()">
    <div  >
        <img src="image/loc4.jpg" id="p6c" style="visibility: hidden">
    </div>

    <img src="image/picture6.jpg" id="p6">

</div>
<!--会员反馈-->
<div class="rail7" onmouseover="oMover7()"onmouseout="oMout7()" onclick="onClickrail7()">
    <div  >
        <img src="image/loc5.jpg" id="p7c" style="visibility: hidden">
    </div>
    <a target="_blank"  href="www.badu.com">
        <img src="image/picture7.jpg" id="p7">
    </a>
</div>
<!--返回顶部-->
<div class="rali8" onmouseover="oMover8()" onmouseout="oMout8()" onclick="onClickrail8()">
    <div  >
        <img src="image/loc6.jpg" id="p8c"  style="visibility: hidden">
    </div>
    <img src="image/picture8.jpg" id="p8">

</div>
       


        <!--  购物车界面-->
        <div  class="panel" style="visibility: hidden">
            <div class="shop-c">
                我的购物车
            </div>
            <div class="cart-k" >
                <div class="citem-wl">
                    <div class="citem-l" id="citem-l1">
                        <div >
                            <a href="#"><img src="image/item-img1.jpg" class="citem-img"></a>
                        </div>
                        <div class="citem-name">
                            <a href="#" >棉衣</a>
                        </div>
                        <div class="citem-price" >
                            ￥270
                        </div>
                        <div class="citem-size">
                            M（170）
                        </div>
                    </div>
                </div>
   

              


            </div>
            <div class="shop-but"onmouseover="oMovershopbut()" onclick="onClickbut()" >
                ×
            </div>

        </div>
        <!--  优惠券界面-->
        <div  class="panel" style="visibility: hidden">
            <div class="shop-c">
                我的优惠券
            </div>
            <div class="shop-but" onmouseover="oMovershopbut()" onclick="onClickbut()">
                ×
            </div>
            <div class="shop-k">

            </div>
        </div>
        <!--  品牌收藏界面-->
        <div  class="panel" style="visibility: hidden">
            <div class="shop-c">
                我收藏的品牌
            </div>
            <div class="shop-but" onmouseover="oMovershopbut()" onclick="onClickbut()">
                ×
            </div>
            <div class="brand-k">

              

                <div class="brand-wl">
                    <div class="brand-l" id="brand-l2">
                        <div >
                            <img src="image/item-img1.jpg" class="brand-img" onmouseover="oMoverbrandimg2()"
                            >
                        </div>
                        <div class="brand-name">
                            耐克
                        </div>
                        <a href="#"><div class="brand-cloth" style="visibility: hidden" id="brand-cloth2" onmouseout="oMoutbrandiexp2()">
                            <div class="brand-cloth-exp"> 进入抢购>></div>
                        </div></a>                    </div></div>

               
            </div>
        </div>
        <!--  商品收藏界面-->
        <div  class="panel" style="visibility: hidden">
            <div class="shop-c">
                我收藏的商品
            </div>
            <div class="shop-but" onmouseover="oMovershopbut()" onclick="onClickbut()">
                ×
            </div>
            <div class="shop-k">
                <div class="item-wl">
                    <div class="item-l" id="item-l1">
                        <div >
                            <a href="#"><img src="../image/item-img1.jpg" class="item-img"></a>
                        </div>
                        <div class="item-name">
                            <a href="#" >棉衣</a>
                        </div>
                        <div class="item-price">
                            ￥270
                        </div>
                        <div class="item-size">
                            M（170）
                        </div>
                    </div>
                </div>

                <div class="item-wl">
                    <div class="item-l" id="item-l2">
                        <div >
                            <a href="#"><img src="image/item-img1.jpg" class="item-img"></a>
                        </div>
                        <div class="item-name">
                            <a href="#" >棉衣</a>
                        </div>
                        <div class="item-price">
                            ￥270
                        </div>
                        <div class="item-size">
                            M（170）
                        </div>
                    </div></div>

                <div class="item-wl">
                    <div class="item-l" id="item-l3">
                        <div >
                            <a href="#"><img src="image/item-img1.jpg" class="item-img"></a>
                        </div>
                        <div class="item-name">
                            <a href="#" >棉衣</a>
                        </div>
                        <div class="item-price">
                            ￥270
                        </div>
                        <div class="item-size">
                            M（170）
                        </div>
                    </div></div>

                <div class="item-wl">
                    <div class="item-l" id="item-l4">
                        <div >
                            <a href="#"><img src="image/item-img1.jpg" class="item-img"></a>
                        </div>
                        <div class="item-name">
                            <a href="#" >棉衣</a>
                        </div>
                        <div class="item-price">
                            ￥270
                        </div>
                        <div class="item-size">
                            M（170）
                        </div>
                    </div></div>

                <div class="item-wl">
                    <div class="item-l" id="item-l5">
                        <div >
                            <a href="#"><img src="image/item-img1.jpg" class="item-img"></a>
                        </div>
                        <div class="item-name">
                            <a href="#" >棉衣</a>
                        </div>
                        <div class="item-price">
                            ￥270
                        </div>
                        <div class="item-size">
                            M（170）
                        </div>
                    </div></div>


                <div class="item-wl">
                    <div class="item-l" id="item-l6">
                        <div >
                            <a href="#"><img src="image/item-img1.jpg" class="item-img"></a>
                        </div>
                        <div class="item-name">
                            <a href="#" >棉衣</a>
                        </div>
                        <div class="item-price">
                            ￥270
                        </div>
                        <div class="item-size">
                            M（170）
                        </div>
                    </div></div>

                <div class="item-wl">
                    <div class="item-l" id="item-l7">
                        <div >
                            <a href="#"><img src="image/item-img1.jpg" class="item-img"></a>
                        </div>
                        <div class="item-name">
                            <a href="#" >棉衣</a>
                        </div>
                        <div class="item-price">
                            ￥270
                        </div>
                        <div class="item-size">
                            M（170）
                        </div>
                    </div></div>

                <div class="item-wl">
                    <div class="item-l" id="item-l8">
                        <div >
                            <a href="#"><img src="image/item-img1.jpg" class="item-img"></a>
                        </div>
                        <div class="item-name">
                            <a href="#" >棉衣</a>
                        </div>
                        <div class="item-price">
                            ￥270
                        </div>
                        <div class="item-size">
                            M（170）
                        </div>
                    </div></div>
                <div class="item-wl">
                    <div class="item-l" id="item-l9">
                        <div >
                            <a href="#"><img src="image/item-img1.jpg" class="item-img"></a>
                        </div>
                        <div class="item-name">
                            <a href="#" >棉衣</a>
                        </div>
                        <div class="item-price">
                            ￥270
                        </div>
                        <div class="item-size">
                            M（170）
                        </div>
                    </div></div>
            </div>



        </div>
        <!--  我的足迹界面-->
        <div  class="panel" style="visibility: hidden">
            <div class="shop-c">
                我的足迹
            </div>
            <div class="shop-but" onmouseover="oMovershopbut()" onclick="onClickbut()" >
                ×
            </div>
            <div class="shop-k">

            </div>

        </div>

        <div class="outpanel" id="out-panel2" style="visibility: hidden" onclick="onClickbut()" ></div>
        <div class="outpanel" id="out-panel1" style="visibility: hidden" onclick="onClickbut()"></div>
    </div>
</div>






</body>
</html>