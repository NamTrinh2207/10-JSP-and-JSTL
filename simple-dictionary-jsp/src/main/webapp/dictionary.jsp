<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Nam
  Date: 3/1/2023
  Time: 11:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
  <%
    Map<String, String> dic = new HashMap<>();
  %>
  <%
    dic.put("hello","Xin chào");
    dic.put("how","Thế nào");
    dic.put("book","Quyển vở");
    dic.put("computer","Máy tính");
    PrintWriter writer = response.getWriter();

    String search = request.getParameter("search");
    String result = dic.get(search);
    if (result!=null){
      writer.println("Word: "+search);
      writer.println("result: "+result);
    }else {
      writer.println("not found");
    }
  %>
</body>
</html>
