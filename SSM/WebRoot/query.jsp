<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>query</title> 
  </head>
  
 
  <body>  
    <form action="batchRemove" method="post"> 
    <table align="center" border="1" width="100%" bgcolor="pink">
      <tr>
         <th>
            ����ID(��ˮ��)
         </th>
          <th>
            ����No(�����)
         </th>
         <th>
            �ջ�������
         </th>
         <th>
            �ջ��˵�ַ
         </th>
          <th>
            �ջ��˵绰
         </th>        
      </tr>
      <c:forEach items="${orders}" var="order">
        <tr>
          <td><input type="checkbox" name="ids" value="${order.orderId}"/>
          ${order.orderId}</td>
          <td>${order.orderNo}</td>
          <td>${order.userName}</td>
          <td>${order.userAddress}</td>
          <td>${order.userPhone}</td>
        </tr>
      </c:forEach>
      <tr bgcolor="red" align="center">
        <td colspan="5">
           <input type="submit" value="����ɾ��"
            onclick="return confirm('��ȷ��Ҫɾ����')"/>
        </td>
      </tr>
    </table>  
    </form>  
  </body>
</html>
