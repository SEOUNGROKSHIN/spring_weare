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

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link href="/assets/css/main.css" rel="stylesheet" type="text/css" />
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
        <div class="card-header">
          Featured
        </div>
        <div class="card-body">
          <div class="input-group mb-3">
            <span class="input-group-text">번호</span>
            <input type="text" name="tno" class="form-control" value=<c:out value="${dto.tno}"></c:out> readonly>
          </div>

          <div class="input-group mb-3">
            <span class="input-group-text">날짜</span>
            <input type="text" name="dueDate" class="form-control"
                   value=<c:out value="${dto.date}"></c:out> readonly>
          </div>

          <div class="input-group mb-3">
            <span class="input-group-text">제목</span>
            <input type="text" name="title" class="form-control"
                   value=<c:out value="${dto.title}"></c:out> readonly>
          </div>

          <div class="input-group mb-3">
            <span class="input-group-text">작성자</span>
            <input type="text" name="writer" class="form-control"
                   value=<c:out value="${dto.name}"></c:out> readonly>
          </div>

          <div class="input-group bb-2">
            <span class="input-group-text">내용</span><%--
            <input type="text" name="content" class="form-control"
                   value=<c:out value="${dto.content}"></c:out> readonly>--%>
            <textarea rows="5" cols="50" class="form-control" name="content" readonly>
              <c:out value="${dto.content}"/></textarea>
          </div><br/>

         <%-- <div class="form-check">
            <label class="form-check-label" >
              Finished &nbsp
            </label>
            <input class="form-check-input" type="checkbox" name="finished" ${dto.status? "checked":""} disabled >
          </div>--%>

          <div class="my-4">
            <div class="float-end">
              <button type="submit" class="btn btn-primary">Modify</button>
              <button type="reset" class="btn btn-secondary">List</button>
            </div>
          </div>

          <script>
            document.querySelector(".btn-primary").addEventListener("click" , function(e) {
              self.location = "/ask/modify?tno="+${dto.tno}
            } , false)

            document.querySelector(".btn-secondary").addEventListener("click" , function (e)
            {
              self.location = "/ask/list";
            }, false)
          </script>
          </form>

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