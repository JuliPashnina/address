<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Населенные пункты</title>
</head>
<body>
<h1>Общий список</h1>

<c:url var="addUrl" value="/naspunkt/add" />
<a href="${addUrl}">Новый населенный пункт</a> 
<table style="border: 1px solid; width: 500px; text-align:center">
 <thead style="background:#fcf">
  <tr>
   <th>CM_OKATO</th>
   <th>STATE</th>
   <th>CM_CTEXT</th>
   <th>CM_SOCR</th>
   <th>CM_NTERR</th>
   <th>CM_POSELEN</th>
   <th colspan="3"></th>
  </tr>
 </thead>
 <tbody>
 <c:forEach items="${naspunkt}" var="city">
   <c:url var="editUrl" value="/naspunkt/edit?id=${city.cmOkato}" />
   <c:url var="deleteUrl" value="/naspunkt/delete?id=${city.cmOkato}" />
  <tr>
   <td><c:out value="${city.cmOkato}" /></td>
   <td><c:out value="${city.cmCtext}" /></td>
   <td><c:out value="${city.state}" /></td>
   <td><c:out value="${city.cmSocr}" /></td>
   <td><c:out value="${city.cmNterr}" /></td>
   <td><c:out value="${city.cmPoselen}" /></td>
   <td><a href="${editUrl}">Изменить</a></td>
   <td><a href="${deleteUrl}">Удалить</a></td>
  </tr>
 </c:forEach>
 </tbody>
</table>
 
<c:if test="${empty naspunkt}">
 Список пуст. <a href="${addUrl}">Добавить</a> населенный пункт.
</c:if>
 
</body>
</html>
