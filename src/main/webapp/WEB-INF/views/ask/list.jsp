<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-12-20
  Time: 오후 4:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Main CSS -->
  <link href="/assets/css/main.css" rel="stylesheet" type="text/css">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
  <div class="row">
    <!-- 기존의 <h1>Header</h1> -->
    <div class="col">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="/">Weare</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
              <a class="nav-link" href="#">Features</a>
              <a class="nav-link" href="#">Pricing</a>
              <a class="nav-link disabled">Disabled</a>
            </div>
          </div>
        </div>
      </nav>
    </div>
  </div>
  <!--header end-->
  <div class="row content">
    <div class="col">
      <div class="card">
      <h6 class="wn">님 환영합니다!</h6>
        <div class="card-header">

        </div>
        <div class="card-body">
          <table class="table">
            <thead>
            <tr>
              <th scope="col">글 번호</th>
              <th scope="col">제목</th>
              <th scope="col">이름</th>
              <th scope="col">문의날짜</th>
              <th scope="col">상태</th>
            </tr>
            </thead>
            <tbody>
              <tr>
            <c:forEach items="${dtoList}" var="dto">
                <th scope="row" c:out value="${dto.tno}">${dto.tno}</th>
                <td><a href="/ask/read?tno=${dto.tno}" class="text-decoration-none"><c:out value="${dto.title}"/></a></td>
                <td><c:out value="${dto.name}"/></td>
                <td><c:out value="${dto.date}"/></td>
                <td><c:out value="${dto.status}"/></td>
              </tr>
            </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </div>

  </div>

  <div class="row footer">
    <!--<h1>Footer</h1>-->

    <div class="row  fixed-bottom" style="z-index: -100">
      <footer class="py-1 my-1 ">
        <p class="text-center text-muted">Footer</p>
      </footer>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>




</body>
</html>