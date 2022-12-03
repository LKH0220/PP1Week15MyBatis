<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>ADD</title>
    <link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<body>
<h1>새 글 쓰기</h1>
<form action="addok" method="POST">
    <table id="edit">
        <tr><td class="side">카테고리</td><td><input type="text" name="category"></td></tr>
        <tr><td class="side">제목</td><td><input type="text" name="title"></td></tr>
        <tr><td class="side">글쓴이</td><td><input type="text" name="writer"></td></tr>
        <tr><td class="side">내용</td><td><textarea name="content" cols="50" rows="5"></textarea></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>
</body>
</html>
