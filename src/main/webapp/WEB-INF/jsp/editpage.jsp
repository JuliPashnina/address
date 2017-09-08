<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Изменить описание населенного пункта</title>
</head>
<body>

<h1>Значения полей:</h1>
<c:url var="saveUrl" value="/naspunkt/edit?id=${naspunktAttribute.cmOkato}" />
<form:form object="${naspunktAttribute}" method="POST" action="${saveUrl}">
<%--<form:form  modelAttribute="naspunktAttribute" method="POST" action="${saveUrl}">--%> 
<table border="1">
  <tr>
   <td><form:label path="cmOkato">CM_OKATO:</form:label></td>
   <td width="200"><input type="text" value="${naspunktAttribute.cmOkato}"/></td>
  </tr>
  
  <tr>
   <td><form:label path="state">CM_STATE:</form:label></td>
   <td width="200"><input type="text" value="${naspunktAttribute.state}"/></td>
  </tr>
 
  <tr>
   <td><form:label path="cmCtext">CM_CTEXT:</form:label></td>
   <td width="200"><input type="text" value="${naspunktAttribute.cmCtext}"/></td>
  </tr>
 
  <tr>
   <td><form:label path="cmSocr">CM_SOCR:</form:label></td>
   <td width="200"><input type="text" value="${naspunktAttribute.cmSocr}" /></td>
  </tr>
   
  <tr>
   <td><form:label path="cmNterr">CM_NTERR:</form:label></td>
   <td width="200"><input type="text" value="${naspunktAttribute.cmNterr}"/></td>
  </tr>
   
  <tr>
   <td><form:label path="cmPoselen">CM_NPOSELEN:</form:label></td>
   <td width="200"><input type="text" value="${naspunktAttribute.cmPoselen}"/></td>
  </tr>
 </table>
  
 <!--<input type="submit" value="Сохранить" />-->
 <button type="submit">Сохранить</button>
</form:form>
 
</body>
</html>
