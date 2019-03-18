<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
  <title>在线支付</title>
    <link rel="stylesheet" href="css/n_css5.css">
  </head>
  <body>     
  
  
  <form action="pay" method="post" class="allpayment"> <!--form规定当提交表单时向何处发送表单数据, 意思是当前的数据用post方法传递-->
   <input type="hidden" name="username" value="${username}"/> 
    <table width="60%">
    
        <tr>
            <td bgcolor="#F7FEFF" colspan="4"> <!--colspan 属性规定单元格可横跨的列数。-->
               <div class="goodsinfo"> <img src="${image}" height="297" width="235"/>
                   <div class="infos">
                       <span class="iprice">￥${price}</span>
                        <span class="igoodsinfo">
                                                                    亲爱的${username}，你的商品信息如下<br>
                           id:${id}
                        </span>
                       <span class="igoodsno">
                           订单号:1231231231
                       </span>
                   </div>
               </div>
        </tr>
        
        
        <tr><td><br/></td></tr>
        <tr>
            <td>请您选择在线支付方式</td>
        </tr>
        <tr>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="BCCB-NET">微信支付</td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CIB-NET">支付宝支付</td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CMBCHINA-NET">招商银行 </td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="ICBC-NET">工商银行</td>

        </tr>
        <tr>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CMBC-NET">中国民生银行总行</td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CEB-NET" >光大银行 </td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="ABC-NET">农业银行</td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CCB-NET">建设银行 </td>
        </tr>
        <tr>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="ABC-NET">农业银行</td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CCB-NET">建设银行 </td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="SPDB-NET">上海浦东发展银行 </td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="ECITIC-NET">中信银行</td>
            
        </tr>
        <tr>
            <td></td><td></td><td></td>
            
            <td class="querenzhifu"><INPUT TYPE="submit" value="确定支付"></td>
        </tr>
    </table>
</form>
  </body>
</html>
