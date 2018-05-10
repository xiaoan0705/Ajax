<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Insert title here</title>
<script src="../js/jquery-1.9.1.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/bootstrap.min.js"></script>
</head>
<body>
	<div id="myCarousel" class="carousel slide">
		<!-- 轮播指标 -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<!-- 轮播项目 -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="../img/1.jpg" width="500px" alt="First slide">
			</div>
			<div class="item">
				<img src="../img/2.jpg" width="500px" alt="Second slide">
			</div>
			<div class="item">
				<img src="../img/3.jpg" width="500px" alt="Third slide">
			</div>
		</div>
		<!-- 轮播导航 -->
		<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>

	</div>
</body>
</html>