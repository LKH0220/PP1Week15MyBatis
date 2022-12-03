<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Edit</title>
    <link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<body>
<h1>글 수정하기</h1>
<form:form modelAttribute="u" method="post" action="../editok">
    <form:hidden path="seq"/>
    <table>
        <tr><td>카테고리</td><td><form:input path="category"/></td></tr>
        <tr><td>제목</td><td><form:input path="title"/></td></tr>
        <tr><td>글쓴이</td><td><form:input path="writer"/></td></tr>
        <tr><td>내용</td><td><form:textarea path="content" cols="50" rows="5"/> </td></tr>
    </table>
    <input type="submit" value="수정하기"/>
    <input type="reset" value="취소하기"/>
</form:form>

</body>
</html>