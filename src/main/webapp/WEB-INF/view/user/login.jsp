<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>欢迎回来</title>

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"
	href="/resource/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/resource/css/cms.css" />
<link rel="stylesheet" type="text/css" href="/resource/assets/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="/resource/css/jquery/screen.css">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style type="text/css">
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/view/common/top.jsp"></jsp:include>

	<!-- 登录注册页面 -->
	<div style="height: 50px;"></div>

	<div class="container">
		<div class="row passport_bg">
			<div class="col-md-6">
				<div class="passport_panel">
					<div class="card">
						<div class="card-header">欢迎回来</div>

						<div class="card-body">
							<form action="/user/login" method="post" id="valiateform">
								<p align="center" style="color: red">${errorMsg}</p>
								<div class="form-group">
									<label for="username">用户名:</label> <input type="text"
										class="form-control" name="username" id="username"
										value="${user.username }" placeholder="请输入用户名">
								</div>
								
								<div class="form-group">
									<label for="password">密码:</label> <input type="password"
										class="form-control" name="password" id="password"
										value="${user.password}" placeholder="请输入密码">
								</div>

								<div class="form-group">
									<button type="submit" class="btn btn-info">登录</button>
									<p class="w-100" align="right">
										如果没有有帐号，请<a href="/user/register">点这里注册</a>
									</p>
								</div>

							</form>

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="passport_r">
					<h3>最新加入的用户：</h3>
					<p align="center">
						<img src="/resource/assets/img/logo.png" alt="..."
							class="rounded-circle img-thumbnail" /> &nbsp;&nbsp;&nbsp;&nbsp;
						<img src="/resource/assets/img/default-avatar.png" alt="..."
							class="rounded-circle img-thumbnail" />
					</p>
				</div>
			</div>
		</div>
	</div>
	
	<div>
		<br />
		<br />
	</div>
	
	<script type="text/javascript">
		
		$(function() {
			$("#valiateform").validate({
				//校验规则
				rules : {
					username : {
						required : true,
					},
					password : {
						required : true,
					}
				},
				//不满足校验规则信息提示
				messages : {
					username : {
						required : "请输入用户名",
						
					},
					password: {
						required: "密码不能为空",
					},
				}

			})

		})
	</script>
	</script>
</body>
</html>