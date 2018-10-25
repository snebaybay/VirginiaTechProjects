<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="selectedCategoryName" type="java.lang.String" scope="request"/>
<jsp:useBean id="selectedBookList" type="java.util.List" scope="request"/>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<h1 style="text-transform: capitalize">${selectedCategoryName}</h1>
<br>
<li><a href="test?category=classics">classics</a></li>
<li><a href="test?category=fantasy">fantasy</a></li>
<li><a href="test?category=mystery">mystery</a></li>
<li><a href="test?category=romance">romance</a></li>
<li><a href="test?category=history">history</a></li>
<br>
<br>
<table border="1">
    <tr>
        <th>book_id</th>
        <th>title</th>
        <th>author</th>
        <th>price</th>
        <th>is_public</th>
        <th>category_id</th>
    </tr>

    <c:forEach var="book" items="${selectedBookList}">
        <jsp:useBean id="book" type="business.book.Book" scope="page"/>
        <tr>
            <td>${book.bookId}</td>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>${book.price}</td>
            <td>${book.isPublic}</td>
            <td>${book.categoryId}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>