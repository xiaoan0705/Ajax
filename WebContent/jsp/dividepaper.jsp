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
	<!-- <ul class="pagination"> -->
	<!-- 	<li><a href="#">&laquo</a></li> -->
	<!-- 	<li class="active"><a href="#">1</a></li> -->
	<!-- 	<li><a href="#">2</a></li> -->
	<!-- 	<li><a href="#">3</a></li> -->
	<!-- 	<li><a href="#">3</a></li> -->
	<!-- 	<li><a href="#">5</a></li> -->
	<!-- 	<li><a href="#">&raquo</a></li> -->
	<!-- </ul> -->


	<!-- 创建模态框 -->
	<h2>创建模态框</h2>
	<button class="btn btn-primary btn-lg" data-toggle="modal"
		data-target="#myModal">开始演示模态框</button>
	<div class="modal fade" id="myModal" tabinde="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-diamiss="modal"
						aria-hidden="true">&times</button>
					<h4 class="modal-title" id="myModalLabel">模态框标题</h4>
				</div>
				<div class="modal-body">在这里添加文本</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-defult" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary">提交更改</button>
				</div>
			</div>
		</div>
	</div>
	<script>
$(function() {
    $('#myModal').modal('hide')
});
</script>
	<script>
$(function() {
    $('#myModal').on('hide.bs.modal',
    function() {
        alert('嘿，我听说您喜欢模态框...');
    })
});
</script>
</body>
</html>