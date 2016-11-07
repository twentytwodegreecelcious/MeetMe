<%--
  Created by IntelliJ IDEA.
  User: andre
  Date: 07.11.2016
  Time: 23:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${events}" var="event">

        <p style="width: 20%;"><c:out value="${event.name}"/></p>
    <div>
        <h1> <c:out value="${event.id}"></c:out></h1>
        <c:out value="${event.id}"></c:out>
    </div>
</c:forEach>