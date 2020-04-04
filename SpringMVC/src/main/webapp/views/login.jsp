<?xml version="1.0" encoding="GBK"?>
<%@page contentType="text/html;charset=GBK" language="java" %>
<!DOCTYPE html>
 <%@ include file="/static/common/taglibs.jsp"%>
<html>
  <head>
    <title>顶管管理系统</title>
    <meta http-equiv=”Content-Type” content=”text/html; charset=GBK″>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
<%--     <link rel="shortcut icon" href="${ctx}/static/images/favicon.ico"> --%>
    <!-- Bootstrap Core CSS -->
    <script src="${ctx}/static/widgets/jquery/jquery.min.js"></script>
    <script src="${ctx}/static/widgets/nicescroll/jquery.nicescroll.js"></script>
	<script src="${ctx}/static/widgets/slimscroll/jquery.slimscroll.min.js"></script>
    <script type="text/javascript"	src="${ctx}/static/common/js/frame.js"></script>
    <script src="${ctx}/static/widgets/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <link  href="${ctx}/static/widgets/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"> 
    <!-- Custom Fonts -->
   <%--  <link   href="${ctx}/static/widgets/sbadmin2_v1.0.5/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"> --%>
	<link href='${ctx}/static/common/css/frame.css' rel="stylesheet" type="text/css" />
	<link href="${ctx}/static/common/css/login.css" rel="stylesheet" type="text/css" />
	<link href='${ctx}/static/common/css/frame-responsive.css' rel="stylesheet" type="text/css" />
	<script language="javascript">
	 function submitForm() {
		if (fm.username.value == "") {
			alert("用户名不能为空!");
		}else if (fm.password.value == "") {
			alert("密码不能为空!");
		}else if (fm.validateCode.value == "") {
			alert("验证码不能为空！");
		}else{
		   fm.submit();
		}
		
	}
	function init() {
		fm.username.focus();
		fm.username.select();
	} 
	function reloadValidateCode(){
       $("#validateCodeImg").attr("src", contextRootPath+'/validate/validateCode.do');
     }
</script>
  </head>
  <body class="login tooltips">
		<div class="login-header text-center">
			<%-- <img src="${ctx}/static/images/logo.png" class="logo" alt="Logo"> --%>
		</div>
		<div class="login-wrapper">
			<form role="form" name="fm" id="fm"	 action="${ctx}/saaUserPower/login.do" method="post">
			    <div style="color: deeppink">
                  <p>${message }</p>  <%--这里显示上边的controller里边用户或者密码错误的信息--%>
               </div>
				<div class="form-group has-feedback lg left-feedback no-label">
				  <input type="text" class="form-control no-border input-lg rounded" name="username" maxlength="10" placeholder="用户名ID" value="zhangsan" autofocus >
				  <span class="fa fa-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback lg left-feedback no-label">
				  <input type="password" class="form-control no-border input-lg rounded" name="password" placeholder="密&nbsp;&nbsp;&nbsp;码" value="111">
				  <span class="fa fa-unlock-alt form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback lg left-feedback no-label">
				  <div class="row form-group">
						<div class="col-xs-7">
							<input class="form-control no-border input-lg rounded" placeholder="验证码"
								name="validateCode" id="validateCode">
						</div>
						<div class="col-xs-3">
							<img id="validateCodeImg" onClick="reloadValidateCode()" src="${ctx }/validate/validateCode.do" />
						</div>
					</div>
					
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-success btn-lg btn-perspective btn-block" onClick="submitForm()">登录</button>
				</div>
			</form>
		</div>
		<!-- jQuery -->
	<%-- 	
		
		<!-- Bootstrap Core JavaScript -->
		<script src="${ctx}/static/widgets/sbadmin2_v1.0.5/bower_components/bootstrap/dist/js/bootstrap.js"></script>

	
		<script src="${ctx}/static/widgets/bootstrap-modal/js/bootstrap-modalmanager.js" type='text/javascript'></script>
		<script src="${ctx}/static/widgets/bootstrap-modal/js/bootstrap-modal.js" type='text/javascript'></script>
		
		<script src="${ctx}/static/widgets/nicescroll/jquery.nicescroll.js"></script>
		<script src="${ctx}/static/widgets/slimscroll/jquery.slimscroll.min.js"></script>
		<script type="text/javascript"	src="${ctx}/static/common/js/frame.js"></script> --%>
	</body>
</html>
