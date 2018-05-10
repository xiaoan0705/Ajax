<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>二级导航</title>
	<style>
		*{
			padding:0;
			margin:0;
		}
		.page{
			width:100%;
			height:4043px;
			background:url(../img/bg2.jpg) center top no-repeat;
		}
		.nav{
			width:160px;
			height:206px;
			position:fixed;
			left:0;
			top:50%;
			margin-top:-103px;
			font-family:'Miscrosoft YaHei';
		}
		.nav-li{
			width:160px;
			height:auto;
			border-bottom:1px solid #fff;
			background:#333;
			text-align:center;
			line-height:40px;
			color:#fff;
			font-size:16px;
			cursor:pointer;
		}
		.tit{
			width:160px;
			height:40px;
		}
		.nav-li:hover ul{
			display:block;
		}
		.nav-li ul{
			width:160px;
			height:auto;
			background:#fff;
			display:none;
		}
		.nav-li ul li{
			width:160px;
			height:40px;
			border-bottom:1px dashed #666;
			color:#333;
			text-align:center;
			line-height:40px;
			position:relative;
		}
		.nav-li ul li:hover .list-3{/*当鼠标划过二级子栏目时显示三级子栏目*/
			display:block;
		}
		.list-3{
			width:160px;
			height:auto;
			position:absolute;
			left:160px;
			top:0px;
			display:none;
		}
		.list-3Dom{
			width:160px;
			height:40px;
			background:#444;
			border-bottom:1px dashed #666;
			color:#fff;
			text-align:center;
			line-height:40px;
		}
	</style>
</head>
<body>
	<div class="page">	
		<div class="nav">
			<div class="nav-li">
				<div class="tit">慕课网的标题</div>
				<ul>
					<li>二级栏目
						<div class="list-3">
							<div class="list-3Dom">三级栏目</div>
							<div class="list-3Dom">三级栏目</div>
							<div class="list-3Dom">三级栏目</div>
							<div class="list-3Dom">三级栏目</div>
							<div class="list-3Dom">三级栏目</div>
						</div>
					</li>
						<li>二级栏目
						<div class="list-3">
							<div class="list-3Dom">三级栏目</div>
							<div class="list-3Dom">三级栏目</div>
							<div class="list-3Dom">三级栏目</div>
							<div class="list-3Dom">三级栏目</div>
							<div class="list-3Dom">三级栏目</div>
						</div>
					</li>
						<li>二级栏目
						<div class="list-3">
							<div class="list-3Dom">三级栏目</div>
							<div class="list-3Dom">三级栏目</div>
							<div class="list-3Dom">三级栏目</div>
							<div class="list-3Dom">三级栏目</div>
							<div class="list-3Dom">三级栏目</div>
						</div>
					</li>
						<li>二级栏目
						<div class="list-3">
							<div class="list-3Dom">三级栏目</div>
							<div class="list-3Dom">三级栏目</div>
							<div class="list-3Dom">三级栏目</div>
							<div class="list-3Dom">三级栏目</div>
							<div class="list-3Dom">三级栏目</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="nav-li">
				<div class="tit">慕课网的标题</div>
				<ul>
					<li>二级栏目</li>
					<li>二级栏目</li>
					<li>二级栏目</li>
					<li>二级栏目</li>
				</ul>
			</div>
			<div class="nav-li">
				<div class="tit">慕课网的标题</div>
				<ul>
					<li>二级栏目</li>
					<li>二级栏目</li>
					<li>二级栏目</li>
					<li>二级栏目</li>
				</ul>
			</div>
			<div class="nav-li">
				<div class="tit">慕课网的标题</div>
				<ul>
					<li>二级栏目</li>
					<li>二级栏目</li>
					<li>二级栏目</li>
					<li>二级栏目</li>
				</ul>
			</div>
			<div class="nav-li">
				<div class="tit">慕课网的标题</div>
				<ul>
					<li>二级栏目</li>
					<li>二级栏目</li>
					<li>二级栏目</li>
					<li>二级栏目</li>
				</ul>
			</div>
			<div class="nav-li">
				<div class="tit">慕课网的标题</div>
				<ul>
					<li>二级栏目</li>
					<li>二级栏目</li>
					<li>二级栏目</li>
					<li>二级栏目</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>