<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Ajax技术</title>
<script src="../js/jquery-1.9.1.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/bootstrap.min.js"></script>
<script>
function loadXMLDoc(){
	var xmlhttp;
	//所有现代浏览器均支持 XMLHttpRequest 对象（IE5 和 IE6 使用 ActiveXObject),不同浏览器创建不同对象
	if(window.XMLHttpRequest)
		{
			xmlhttp=new XMLHttpRequest();//创建XMLHttpRequest
		}
	else{
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
	xmlhttp.onreadystatechange=function(){
		if(xmlhttp.readyState==4&&xmlhttp.status==200)//当 readyState 等于 4 且状态为 200 时，表示响应已就绪
			{
			//获得来自服务器的响应
				document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
			}
	     }
	//如需将请求发送到服务器，我们使用 XMLHttpRequest 对象的 open() 和 send() 方法
	//open() 方法的 url 参数是服务器上文件的地址
	xmlhttp.open("GET","ajax.txt",true);
	xmlhttp.send();
}
</script>


<script>
function showHint(str){
	var xmlhttp;
	if(str.length==0)//如果输入框为空 (str.length==0)，则该函数清空 txtHint 占位符的内容，并退出函数
		{
			document.getElementById("txtHint").innerHTML="";
			return;
		}
	if(window.XMLHttpRequest)
		{
			xmlhttp=new XMLHttpRequest();//创建XMLHttpRequest
		}
	else{
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
	xmlhttp.onreadystatechange=function(){
	if(xmlhttp.readyState==4&&xmlhttp.status==200)//当 readyState 等于 4 且状态为 200 时，表示响应已就绪
		{
			document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
		}
	 }
	xmlhttp.open("GET","gethint.php?q="+str,true);
	xmlhttp.send();
}
</script>
</head>
<body>
	<!-- example1 -->
	<div id="myDiv">
		<h2>使用AJAX修改该文本内容</h2>
	</div>
	<button type="button" onclick="loadXMLDoc()">修改内容</button>

</body>
</html>