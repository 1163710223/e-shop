<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
  <title>����֧��</title>
    <link rel="stylesheet" href="css/n_css5.css">
  </head>
  <body>     
  
  
  <form action="pay" method="post" class="allpayment"> <!--form�涨���ύ��ʱ��δ����ͱ�����, ��˼�ǵ�ǰ��������post��������-->
   <input type="hidden" name="username" value="${username}"/> 
    <table width="60%">
    
        <tr>
            <td bgcolor="#F7FEFF" colspan="4"> <!--colspan ���Թ涨��Ԫ��ɺ���������-->
               <div class="goodsinfo"> <img src="${image}" height="297" width="235"/>
                   <div class="infos">
                       <span class="iprice">��${price}</span>
                        <span class="igoodsinfo">
                                                                    �װ���${username}�������Ʒ��Ϣ����<br>
                           id:${id}
                        </span>
                       <span class="igoodsno">
                           ������:1231231231
                       </span>
                   </div>
               </div>
        </tr>
        
        
        <tr><td><br/></td></tr>
        <tr>
            <td>����ѡ������֧����ʽ</td>
        </tr>
        <tr>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="BCCB-NET">΢��֧��</td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CIB-NET">֧����֧��</td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CMBCHINA-NET">�������� </td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="ICBC-NET">��������</td>

        </tr>
        <tr>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CMBC-NET">�й�������������</td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CEB-NET" >������� </td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="ABC-NET">ũҵ����</td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CCB-NET">�������� </td>
        </tr>
        <tr>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="ABC-NET">ũҵ����</td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CCB-NET">�������� </td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="SPDB-NET">�Ϻ��ֶ���չ���� </td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="ECITIC-NET">��������</td>
            
        </tr>
        <tr>
            <td></td><td></td><td></td>
            
            <td class="querenzhifu"><INPUT TYPE="submit" value="ȷ��֧��"></td>
        </tr>
    </table>
</form>
  </body>
</html>
