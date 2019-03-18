<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>����</title>   
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
      {//��ȡ��̨������s2������<%%>��ʾ�ⷶΧ���Ƿ���������������
         <%  
          String username = (String)request.getParameter("username");
          String newUsername = "";
          if(username!=null)
          {
           newUsername = new String(username.getBytes("iso-8859-1"),"gbk");
          }          
          %>        
             var name = '<%=newUsername%>';//���s2��js����s
             var o = document.getElementById("plogin");
             if(name!="")
             {
            o.innerHTML="��ӭ��";
             }
             
      }
    
         function l_my_order()
           {       
           var name = '<%=newUsername%>';//���s2��js����s
             var o = document.getElementById("plogin");
             if(name=="")
             {
                 window.location.href="login.jsp";
             }
         }
           function l_cart()
     {
     
       var name = '<%=newUsername%>';//���s2��js����s
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
            <div id="main-login" class="log-in" onclick="l_login()" ><span id ="plogin" >���¼</span> ${username}</div>
            <div class="sign-up" onclick="l_signup()">ע��</div>
            <div class="check-in">ǩ������</div>
            <div class="my-order" onclick="l_my_order()" >�ҵĶ���</div>
            <div class="my-sale">
                <span>�ҵ�����</span>
                <div class="my-sale-content">
                    <a href="#">Ʒ���ղ�</a><br>
                    <a href="#">��Ʒ�ղ�</a><br>
                    <a href="#">�ҵ��㼣</a><br>
                </div>
            </div>
            <div class="Member-club">
                <span>��Ա���ֲ�</span>
                <div class="Member-club-content">
                    <a href="#">���ֲ���ҳ</a><br>
                    <a href="#">ΨƷ�Ҷһ�</a><br>
                    <a href="#">��ѳ��</a><br>
                </div>
            </div>
            <div class="customer-service">
                <span>�ͻ�����</span>
                <div class="customer-service-content">
                    <a href="#">��ϵ�ͷ�</a><br>
                    <a href="#">��������</a><br>
                    <a href="#">��������</a><br>
                    <a href="#">֪ʶ��ȨͶ��</a><br>
                </div>
            </div>
            <div class="mobile">
                <span>�ֻ���</span>
                <div class="mobile-content">
                    <a href="#" ><img src="image/qrimage.jpg" width="150" height="150"/></a><br>
                    <span>��ʱ�� ��ʱ��</span>
                </div>
            </div>

        </div>
        <div>
            <div class="header-more">
                <span>����</span>
                <div class="header-more-content">
                    <a href="#">����ר��</a><br>
                    <a href="#">����������</a>
                    <a href="#">ΨƷ��</a>
                    <a href="#">֧��ר��</a><br>
                    <a href="#">��������</a><br>
                    <a href="#">Sell on vip</a>
                    <a href="#">Ʒ������</a>
                    <a href="#">�ٷ�����</a>
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
        <button class="cart" onclick="javascript:form1.submit();">���ﳵ</button>
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
                  <span style="color: deeppink">��</span>
                  <span class="price_now" style="color: deeppink;font-size: x-large">${good.price}</span>
                  <a class="maimaimai" style="color: #ff189a" href="#">���ھ�Ҫ��</a>
                </div>
            ${good.name}  <br>
            <span style="color:gray;">${good.introduction}</span>
         </div>
        </form>
        </c:forEach>  
    </div>
    
   </div> 
    
   
   
<!-- ������ -->
<div id="footer" class="footer">
    <div class="footer-icon">
        <img src="image/��ǩ.png" alt="">
    </div>
    <br>
    <div class="footer-list">
        <dl class="link-anim">
            <dt>������</dt>
            <dd>
                <a href="https://viva.vip.com/act/supportInsurance?wapid=vivac_767" target="_blank"
                   rel="nofollow">��Ʒ��֤</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/commitment.php" target="_blank" rel="nofollow">7�������ɷ�����</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/commitment.php" target="_blank" rel="nofollow">�˻����˷�</a>
            </dd>
            <dd>
                <a href="https://acs.vip.com/" target="_blank" rel="nofollow">7x15Сʱ�ͻ�����</a>
            </dd>
            <dd>
                <a href="https://viva.vip.com/act/changeProduct-pc?wapid=vivac_825" target="_blank"
                   rel="nofollow">7�����������Ļ�</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="link-anim">
            <dt>����ָ��</dt>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=308" target="_blank"
                   rel="nofollow">������ʾ</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=330" target="_blank"
                   rel="nofollow">��������</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=206" target="_blank"
                   rel="nofollow">��Աע��</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=329" target="_blank"
                   rel="nofollow">�˻�����</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=104" target="_blank"
                   rel="nofollow">�ջ���Ʒ</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?cid=69" target="_blank" rel="nofollow">��Ա�ȼ�</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="link-anim">
            <dt>֧����ʽ</dt>
            <dd>
                <a href="https://mst.vip.com/ByMIo4p5mM1-pZjNGBTysQ.php?client=vipcms&amp;wapid=mst_2667903&amp;extra_type=1"
                   target="_blank" rel="nofollow">���֧��</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=336" target="_blank"
                   rel="nofollow">23����������֧��</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?cid=37" target="_blank" rel="nofollow">��������</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=336" target="_blank"
                   rel="nofollow">֧������������֧��</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=336" target="_blank"
                   rel="nofollow">���ÿ�֧��</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=335" target="_blank"
                   rel="nofollow">��Ǯ֧��</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="link-anim">
            <dt>���ͷ�ʽ</dt>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=345" target="_blank" rel="nofollow">ȫ����288Ԫ���˷�</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=345" target="_blank"
                   rel="nofollow">���ͷ�Χ���˷�</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=63" target="_blank"
                   rel="nofollow">�����ǩ��</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="link-anim">
            <dt>�ۺ����</dt>
            <dd>
                <a href="https://help.vip.com/themelist.php?cid=74" target="_blank" rel="nofollow">�˻�����</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=236" target="_blank"
                   rel="nofollow">�˻�����</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=317" target="_blank"
                   rel="nofollow">�˿ʽ��ʱЧ</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?cid=146" target="_blank" rel="nofollow">��������</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="tc last">
            <dt>��̳�APP��ά��</dt>
            <dd>
                <img class="lazy" src="image/qrimage.jpg" width="100" height="100" alt="ΨƷ��APP��ά��">
            </dd>
            <dd>������̳��ƶ�APP</dd>
        </dl>
    </div>
    <br>
    <div class="footer-infor">
        <p class="footer-infor-link">
            <a target="_blank" rel="nofollow" href="https://viva.vip.com/act/supportContact-pc?wapid=vivac_806"
               title="��������">��������</a>|
            <a target="_blank" rel="nofollow" href="https://viva.vip.com/act/supportContactEn-pc?wapid=vivac_799"
               title="About us">About us</a>|
            <a target="_blank" rel="nofollow" href="http://ir.vip.com/" title="Investor Relations">Investor
                Relations</a>|
            <a target="_blank" rel="nofollow" href="https://blog.vip.com/?r=/Blog/HTML_showList/sort_id//29"
               title="ý�屨��">ý�屨��</a>|
            <a target="_blank" rel="nofollow" href="https://vis.vip.com/stipulate/" title="Ʒ������">Ʒ������</a>|
            <a target="_blank" rel="nofollow" href="https://viva.vip.com/act/supportPrivacy-pc?wapid=vivac_804"
               title="��˽����">��˽����</a>|
            <a target="_blank" rel="nofollow" href="http://job.vip.com/" title="ΨƷ��Ƹ">ΨƷ��Ƹ</a>|
            <a target="_blank" rel="nofollow" href="https://viva.vip.com/act/supportFoundationIndex-pc?wapid=vivac_807"
               title="365���Ļ���">365���Ļ���</a>|
            <a target="_blank" rel="nofollow" href="https://vipcard.vip.com/" title="ΨƷ��">ΨƷ��</a>|
            <a target="_blank" href="https://viva.vip.com/act/supportContactUs-pc?wapid=vivac_800" title="��ϵ����">��ϵ����</a>
        </p>
        <p class="footer-infor-txt">
            Copyright ? 2008-2018 vip.com��All Rights Reserved&nbsp;&nbsp;ʹ�ñ���վ����ʾ����<a rel="nofollow"
                                                                                      href="https://viva.vip.com/act/supportClause-pc?wapid=vivac_802">ΨƷ���û�Э��</a>����Ȩ����
            <a rel="nofollow" href="https://www.vip.com/">����ΨƷ������������޹�˾</a><br><a
                href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44010302111111" target="_blank"><img
                src="../image/police_icon.png" width="14" height="14" style="margin:2px 3px 0 0;">����������
            44010302111111��</a>&nbsp;&nbsp;<a rel="nofollow"
                                              href="http://www.miibeian.gov.cn/publish/query/indexFirst.action">��ICP��08114786��</a>
            <a rel="nofollow" target="_blank"
               href="https://viva.vip.com/act/actValueAddedService-pc">��ֵҵ��Ӫ���֤����B2-20170777 </a><a
                rel="nofollow"
                href="http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/61e6abe320e7462baf61aab32a67f256">�����Ļ���Ӫ���֤�������ġ�2015��1528-229</a><br><a
                rel="nofollow" href="https://viva.vip.com/act/actBusinessLicense-pc?wapid=vivac_813">��Ӫ���徭Ӫ֤��</a>&nbsp;&nbsp;<a
                href="https://help.vip.com/themelist.php?type=detail&amp;id=475" target="_blank"
                rel="nofollow">���ռ����Ϣ</a>&nbsp;&nbsp;<a rel="nofollow"
                                                        href="https://viva.vip.com/act/actDrugLicense-pc?wapid=vivac_814">������ҩƷ���׷����ʸ�֤����C20140002��</a>
        </p>
    </div>
</div> 

  </body>
</html>
