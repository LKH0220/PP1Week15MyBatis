<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>List</title>
    <link rel=""stylesheet href="${path}/resources/css/contacts.css">
    <script>
        function deleteContact(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href = 'deleteok/' + id;
        }
    </script>
</head>
<body>
    <div class="container">
        <%@include file="contacts_header.jsp"%>

        <main>
            <div class="contents">
                <div class="upper_contents">
                <h2>My Contacts</h2>
                </div>
                <div class="table">
                    <table>
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Photo</th>
                            <th>Name</th>
                            <th>Phone</th>
                            <th>E-mail</th>
                            <th>Edit</th>
                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach items="${list}" var="contact" varStatus="status">
                            <tr>
                                <td>${fn:length(list)-status.index}</td>
                                <td><img src="img/${contact.photo}" alt="NONE"></td>
                                <td>${contact.name}</td>
                                <td>${contact.phone}</td>
                                <td>${contact.email}</td>
                                <td>
                                    <a href="contacts_editform?id=${u.getSeq()}"><img src="img/edit.png" alt="Edit" width="24"></a>
                                    <a href="javascript:deleteContact('${u.getSeq()}')"><img src="img/delete.png" alt="Delete" width="24"></a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>

        <%@include file="contacts_footer.jsp"%>
    </div>
</body>
</html>
