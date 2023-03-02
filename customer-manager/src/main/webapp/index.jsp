<%@ page import="java.util.List" %>
<%@ page import="com.example.customermanager.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Manager</title>
</head>
<style>
    table, th,td {
        border: 1px solid black;
    }
    td,th{
        padding: 5px;
    }

</style>
<body>
<%! List<Customer> customers = new ArrayList<>();%>
<%
    customers.add(new Customer("Mai Văn Hoàn", "21-08-1983", "Hà Nội"));
    customers.add(new Customer("Nguyễn văn Nam", "21-08-1983", "Bắc Giang"));
    customers.add(new Customer("Nguyễn Thái Hòa", "22-08-1983", "Nam Định"));
    customers.add(new Customer("Trần Đăng Khoa", "17-08-1983", "Hà Tây"));
    customers.add(new Customer("Nguyễn Đình Thi", "19-08-1983", "Hà Nội"));
    request.setAttribute("list", customers);
%>
<table>
    <tr>
        <th>Name</th>
        <th>Date</th>
        <th>Address</th>
    </tr>
    <c:forEach items="${list}" var="customer">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.date}</td>
            <td>${customer.address}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>