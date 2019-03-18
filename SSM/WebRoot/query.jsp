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
            订单ID(流水号)
         </th>
          <th>
            订单No(随机号)
         </th>
         <th>
            收货人姓名
         </th>
         <th>
            收货人地址
         </th>
          <th>
            收货人电话
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
           <input type="submit" value="批量删除"
            onclick="return confirm('您确定要删除吗？')"/>
        </td>
      </tr>
    </table>  
    </form>  
  </body>
</html>
