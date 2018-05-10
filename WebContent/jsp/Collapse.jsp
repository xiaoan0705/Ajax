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
	<!-- 创建可重叠的分组或折叠面板 -->
	<div class="panel-group" id="accordion">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion"
						href="#collapseOne"> 点击我进行展开，再次点击我进行折叠。第 1 部分</a>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse collapse in">
				<div class="panel-body">Nihil anim keffiyeh helvetica, craft
					beer labore wes anderson cred nesciunt sapiente ea proident. Ad
					vegan excepteur butcher vice lomo.</div>
			</div>
		</div>

		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion"
						href="#collapseTwo"> 点击我进行展开，再次点击我进行折叠。第 2 部分</a>
				</h4>
			</div>
			<div id="collapseTwo" class="panel-collapse collapse">
				<div class="panel-body">Nihil anim keffiyeh helvetica, craft
					beer labore wes anderson cred nesciunt sapiente ea proident. Ad
					vegan excepteur butcher vice lomo.</div>
			</div>
		</div>

		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion"
						href="#collapseThree"> 点击我进行展开，再次点击我进行折叠。第 3 部分</a>
				</h4>
			</div>
			<div id="collapseThree" class="panel-collapse collapse">
				<div class="panel-body">Nihil anim keffiyeh helvetica, craft
					beer labore wes anderson cred nesciunt sapiente ea proident. Ad
					vegan excepteur butcher vice lomo.</div>
			</div>
		</div>
	</div>

	<script>
$(function () { 
        $('#collapseThree').on('show.bs.collapse', function () {
            alert('嘿，当您展开时会提示本警告');})
    });
</script>
</body>
</html>