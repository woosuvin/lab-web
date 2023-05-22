<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Spring2</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
            rel="stylesheet" 
            integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
            crossorigin="anonymous">
	</head>
	<body>
    <div class="container-fluid">
		<header class="my-2 p-5 text-center text-bg-secondary">
            <h1>포스트 목록 페이지</h1>
        </header>
        
        <nav class="navbar-expand-lg bg-body-tertiary text-center justify-content-center">
            <ul class="nav justify-content-center">
                <li class="nav-item">
                    <c:url var="mainPage" value="/"></c:url>
                    <a class="nav-link active text-body-emphasis" aria-current="page" href="${ mainPage }">메인 페이지</a>
                </li>
                <li class="nav-item">
                    <c:url var="postCreatePage" value="/post/create"></c:url>
                    <a class="nav-link text-body-emphasis"  href="${ postCreatePage }">새 포스트 작성</a>
                </li>
            </ul>
        </nav>
        
        <main>
            <div>
                <table class="table text-center table-hover">
                    <thead>
                        <tr>
                            <th scope="col">번호</th>
                            <th scope="col">제목</th>
                            <th scope="col">작성자</th>
                            <th scope="col">작성시간</th>
                        </tr>
                    </thead>
                    <tbody class="table-group-divider">
                        <c:forEach items="${ posts }" var="post">
                            <tr>
                                <td scope="row">${ post.id }</td>
                                <td scope="row">
                                    <c:url var="postDetailPage" value="/post/detail">
                                        <c:param name="id" value="${ post.id }"></c:param>
                                    </c:url>
                                    <a href="${ postDetailPage }">${ post.title }</a>
                                    <span class="text-primary-emphasis">[${ post.rcnt }]</span>
                                </td>
                                <td scope="row">${ post.author }</td>
                                <td scope="row">
                                    <fmt:formatDate value="${ post.modifiedTime }" pattern="yyyy.MM.dd HH:mm"/>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>            
            </div>
        </main>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" 
                integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" 
                crossorigin="anonymous">
        </script>
    </div>    
	</body>
</html>