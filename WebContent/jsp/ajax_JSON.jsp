<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Ajax</title>
<script src="../js/jquery-1.9.1.min.js"></script>
<script src="../js/jquery.js"></script>
<script>

	function submitHandler(){
		if(check()){
			$.ajax({
				url:"<%=request.getContextPath()%>/registServlet",
				type:"post",
				dataType:"json",
				data:{
					user:$("#user").val(),
					password:$("#password").val(),
					email:$("#email").val()
				},
				success:function(obj){
					alert(obj.name+","+obj.age);
					window.location.href="http://baidu.com";
				},
				error:function(){
					alert("error");

				}
			});
		}
			
	}
	function check(){
		if(checkName()&&checkPsd()&&checkRePsd()){
			return true;
		}
		else{
			return false;
		}
	} 
	function checkName(){
		  $("#userinfo")[0].innerHTML = "";  //jquery对象没有innerHTML属性，需要转换为DOM对象
		 var user =$('#user').val();//jquery获取值为$('#user').val();DOM对象获取值为document.getElementById('user').value;
			if(user==''){
			 $('#userinfo')[0].innerHTML='用户名不能为空！';
				return false;
		}
		return true;

	}
	function checkPsd(){
		 $("#psdinfo")[0].innerHTML = "";

		var password=$('#password').val();
		if(password==''){
			 $("#psdinfo")[0].innerHTML='密码不能为空!';
			return false;
		}
		else if(password.length<6){
			 $("#psdinfo")[0].innerHTML='密码长度至少6位';
			return false;
		}
		return true;
	}
	function checkRePsd(){
		$("#repsdinfo")[0].innerHTML = "";
		
		var repassword=$('#repassword').val();
		if(repassword==''){
			$("#repsdinfo")[0].innerHTML='密码不能为空';
			return false;
		}
		else if(repassword.length<6){
			$("#repsdinfo")[0].innerHTML='密码长度至少6位';
			return false;
		}
		else if(repassword!=$('#password').val()){
			$("#repsdinfo")[0].innerHTML='两次密码不一致';
			return false;
		}
		return true;
	}
	
	
</script>
</head>
<body>
	<form class="cform" id="cform"  >
		<p>		
			<label >用户名</label><input id="user" type="text" name="name" onblur="checkName()"/><span id="userinfo"></span>
		</p>
		<p>
			<label for="password">密码</label><input id="password" type="password" name="password" onblur="checkPsd()"><span id="psdinfo"></span>
		</p>
		<p>
			<label for="repassword">确认密码</label><input id="repassword" type="password" name="repassword" onblur="checkRePsd()"><span id="repsdinfo"></span>
		</p>
		<p>
			<label for="email">邮箱</label><input id="email" type="email" name="email"><span id="emailinfo"></span>
		</p>
	</form>
		<button   onclick='submitHandler()'>注册</button>

</body>
</html>