<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Weare</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

	<script>

		const serverValidResult = {}

		<c:forEach items="${errors}" var="error">

		serverValidResult['${error.getField()}'] = '${error.defaultMessage}'

		</c:forEach>

		console.log(serverValidResult)
	</script>
</head>
<body class="is-preload">

<!-- Wrapper -->
<div id="wrapper">

	<!-- Intro -->
	<section class="intro">
		<header>
			<h1>Weare</h1>
			<p>Introduce Guide<a href="https://github.com/SEOUNGROKSHIN/Spring_weare/">@CoShin</a>
				<a href="https://github.com/SEOUNGROKSHIN/WEARE">From Team Project</a></p>
			<ul class="actions">
				<li><a href="#first" class="arrow scrolly"><span class="label">Next</span></a></li>
			</ul>
		</header>

		<div class="container">
			<div class="row">
				<div class="col-6">
					<div class="card">
						<div class="card-header">
							제주도
						</div>
						<img src="images/pic01.jpg" alt="" />
						<div class="card-body">
							<h5 class="card-title">About Jeju</h5>
							<p class="card-text"></p>
							<a href="#" class="btn btn-primary">More</a>
						</div>
					</div>
				</div>
				<div class="col-6">
					<div class="card">
						<div class="card-header">
							다낭
						</div>
						<img src="images/pic01.jpg" alt="" />
						<div class="card-body">
							<h5 class="card-title">About Danang</h5>
							<p class="card-text"></p>
							<a href="#" class="btn btn-primary">More</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<%--<div class="content">
			<span class="image fill" data-position="center"><img src="images/pic01.jpg" alt="" /></span>
		</div>--%>


	</section>
	<!-- Section -->
	<section>
		<header>
			<h2>Feugiat consequat tempus ultrices</h2>
		</header>
		<div class="content">
			<p><strong>Etiam tristique libero</strong> eu nibh porttitor amet fermentum. Nullam venenatis erat id vehicula ultrices sed ultricies condimentum.</p>
			<ul class="feature-icons">
				<li class="icon solid fa-laptop">Consequat tempus</li>
				<li class="icon solid fa-user"><a href="http://localhost:8080/ask/list">문의내역</a>
				<li class="icon solid fa-bolt">Etiam adipiscing</li>
				<li class="icon solid fa-signal">Libero nullam</li>
				<li class="icon solid fa-cog">Blandit condimentum</li>
				<li class="icon solid fa-map-marker-alt">Lorem ipsum dolor</li>
				<li class="icon solid fa-code">Nibh amet venenatis</li>
			</ul>
			<p>Vehicula ultrices sed ultricies condimentum. Magna sed etiam consequat, et lorem adipiscing sed nulla. Volutpat nisl et tempus et dolor libero, feugiat magna tempus, sed et lorem adipiscing.</p>
		</div>
	</section>
	<!-- Section End -->

		<div class="content">
			<section>
				<header>
					<h3>Lorem gravida</h3>
					<p>Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aenean ornare velit lacus, ac varius sed enim lorem ullamcorper dolore.  ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis.</p>
				</header>
				<div class="content">
					<div class="gallery">
						<a href="images/gallery/fulls/08.jpg" class="portrait"><img src="images/gallery/thumbs/08.jpg" alt="" /></a>
						<a href="images/gallery/fulls/09.jpg" class="portrait"><img src="images/gallery/thumbs/09.jpg" alt="" /></a>
						<a href="images/gallery/fulls/10.jpg" class="landscape"><img src="images/gallery/thumbs/10.jpg" alt="" /></a>
					</div>
				</div>
			</section>

		</div>

	<!-- Section -->
	<section>
		<div class="content">
			<ul class="actions">
				<li><a href="#" class="button primary large">Inquiry</a></li>
				<li><a href="#" class="button large">Learn More</a></li>
			</ul>
		</div>
	</section>

	<!-- Section -->
	<section>
		<header>
			<h2>Get in touch</h2>
		</header>
		<div class="content">
			<p><strong>WEARE에게 문의하기</strong> 도움이 더 필요 하신가요?</p>
			<form action="/ask/regist" method="post">
				<div class="fields">
					<div class="field half">
						<input type="text" name="name" placeholder="이름" />
					</div>
					<div class="field half">
						<input type="email" name="email" id="email" placeholder="이메일" />
					</div>
					<div class="field">
						<textarea name="title" id="title" placeholder="제목" rows="1"></textarea>
					</div>
					<div class="field">
						<textarea name="content" id="content" placeholder="내용" rows="5"></textarea>
					</div>
				</div>
				<ul class="actions">
					<li><input type="submit" value="전송" class="button primary" /></li>
				</ul>
			</form>
		</div>
		<footer>
			<ul class="items">
				<li>
					<h3>Email</h3>
					<a href="#">information@untitled.ext</a>
				</li>
				<li>
					<h3>Phone</h3>
					<a href="#">(000) 000-0000</a>
				</li>
				<li>
					<h3>Address</h3>
					<span>1234 Somewhere Road, Nashville, TN 00000</span>
				</li>
				<li>
					<h3>Elsewhere</h3>
					<ul class="icons">
						<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon brands fa-linkedin-in"><span class="label">LinkedIn</span></a></li>
						<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
						<li><a href="#" class="icon brands fa-codepen"><span class="label">Codepen</span></a></li>
					</ul>
				</li>
			</ul>
		</footer>
	</section>

	<!-- Copyright -->
	<div class="copyright">&copy; Untitled. All rights reserved. Design: <a href="https://html5up.net">HTML5 UP</a>.</div>

</div>

<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.scrolly.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</body>
</html>