<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'upResume.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="修改个人简历的界面">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
.mid {
	width: 80%;
	height: 600px;
	margin: 0 auto;
	border: 1px solid #EEF3F1;
	position: relative;
	font-family:FangSong;
	font-size:20px;
	background:rgba(246, 246, 249, 0.75);
}

input[type=text] {
	width: 300px;
	line-height: 50px;
	
}

textarea {
	width: 300px;
	line-height: 40px;
	border: 1 px solid black;
	
}
input[type=button],[type=submit] {
	    background-color: #4fcc92;
	    display: inline-block;
	    margin-left: 20px;
	    line-height: 26px;
	    padding: 0 10px;
	    border-radius: 5px;
	    cursor: pointer;
	    color:white;
	
}
</style>
</head>

<body>
	
	<div class="mid">
		<p align="center">请选择你要修改的信息并进行编辑修改,修改完毕后点击确定按钮</p>
		<form action="update!updateResume.action" method="post">
			<input type="hidden" name="idResume" value="${Oneresume.IDResume}" />
			<table align="center">


				<tr>
					<td>*简历名称：</td>
					<td><textarea name="RName"> ${Oneresume.name}</textarea>
					</td>
				</tr>
				<tr>
					<td>*兴趣爱好：</td>
					<td><textarea name="hobby">${Oneresume.hobby}</textarea>
					</td>
				</tr>
				<tr>
					<td>*工作经验：</td>
					<td><textarea name="experience">${Oneresume.handsOnBackground}</textarea><br>
					</td>
				</tr>
				<tr>
					<td>*获奖情况：</td>
					<td><textarea name="award">${Oneresume.awardSituation}</textarea><br>
					</td>
				</tr>
				<tr>
					<td>*应聘职位：</td>
					<td><textarea name="job">${Oneresume.position}</textarea> <br>
					</td>
				</tr>
				<tr>
					<td>*工作地点：</td>
					<td><textarea name="workplace">${Oneresume.workingPlace}</textarea><br>
					</td>
				</tr>

			</table>
			<p align="center">
				<input type="submit" value="提交"> <input type="button"
					value="返回"
					onclick="javascript:window.location.href='jsp/Personal/new/msubscriplook.jsp'">
			</p>
		</form>
	</div>
	</div>
</body>
</html>
