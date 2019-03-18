<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>分类</title>   
     <link rel="stylesheet" href="css/n_queryByKind.css">
      <link rel="stylesheet" type="text/css"  href="css/l_main.css" /> 
      <link rel="stylesheet" href="css/z_main_footer.css">
     <script type="text/javascript">
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
             var o = document.getElementById("plogin");
             if(name=="")
             {
                 window.location.href="login.jsp";
             }
         }
           function l_cart()
     {
     
       var name = '<%=newUsername%>';//输出s2给js变量s
             var o = document.getElementById("plogin");
             if(name=="")
             {
                 window.location.href="login.jsp";
             }else
             {
             location.href="cart";
             }
     }
     
     </script>
     
     
  </head>
 <body onload="confirmStatus()">

<div class ="header">
    <div class="header-inner" >

        <div class="header-menu">
            <div id="main-login" class="log-in" onclick="l_login()" ><span id ="plogin" >请登录</span> ${username}</div>
            <div class="sign-up" onclick="l_signup()">注册</div>
            <div class="check-in">签到有礼</div>
            <div class="my-order" onclick="l_my_order()" >我的订单</div>
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
        <div>
            <form  name = "form1" method="post" action="queryByUsernameInCart"> 
                         <input type="hidden" name="username" value="${username}"/>   
        <button class="cart" onclick="javascript:form1.submit();">购物车</button>
             </form>
        </div>       
    </div>
    
</div>
<div class="goods" >
   <div class="items-show">
   <c:forEach items="${goodsByKind}" var="good">
       <form  method="post" action="buy"> 
        <div class="item" >
        <input  name = "username" type="hidden" value="${username}" >
        <input  name = "id" type="hidden" value="${good.id}" >
         <input type="image" class="imgs" name="submit" src="${good.image}" width="50" height="50">       
              <div class="price">
                  <span style="color: deeppink">￥</span>
                  <span class="price_now" style="color: deeppink;font-size: x-large">${good.price}</span>
                  <a class="maimaimai" style="color: #ff189a" href="#">现在就要！</a>
                </div>
            ${good.name}  <br>
            <span style="color:gray;">${good.introduction}</span>
         </div>
        </form>
        </c:forEach>  
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
                <img class="lazy" src="image/qrimage.jpg" width="100" height="100" alt="唯品会APP二维码">
            </dd>
            <dd>下载睿道商城移动APP</dd>
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

  </body>
</html>
