<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="/static/common/taglibs.jsp"%>
<head>
<style>
th {
white-space: nowrap; 
}
</style>
<title>${title }</title>
<script type="text/javascript"	src="${ctx}/views/js/UIUserCreate.js"></script>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<!-- style="position:absolute;" -->
			 <form role="form" name="fm" id="fm"	 action="${ctx}/user/saveUser.do" method="post">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne">${title }</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-6">
										<div class="row form-group">
											<div class="col-xs-3" align="right">
												<label for="userName" class="control-label">用户名称</label>
											</div>
											<div class="col-xs-8">
											<input type ="hidden" id="id" name="id" class="form-control"  value ="${user.id }"/>
												<input id="userName"
													name="userName" class="form-control"  value ="${user.userName }"/>
											</div>
										</div>
									</div>
									
									<div class="col-lg-6 col-md-6 col-xs-6">
										<div class="row form-group">
											<div class="col-xs-3" align="right">
												<label for="passWord" class="control-label">密码</label>
											</div>
											<div class="col-xs-8">
												<input id="passWord"
													name="passWord" class="form-control" value ="${user.passWord }" />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12 col-md-12 col-xs-12">
										<div style="text-align: center;">
											<button class="btn btn-primary btn-outline btn-save"
												id="saveUser" type="button"  onClick="submitForm()">保存</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>