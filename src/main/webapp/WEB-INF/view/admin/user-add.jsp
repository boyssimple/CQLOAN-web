<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="cn">
	<head>
		<meta charset="utf-8" />
		<title>${sys.appName}</title>
		<meta name="keywords" content="${sys.appKeywords}" />
		<meta name="description" content="${sys.appDesc}" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		<link href="${pageContext.request.contextPath}/scripts/ace/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/ace/assets/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/ace/assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/ace/assets/css/jquery-ui-1.10.3.custom.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/ace/assets/css/chosen.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/ace/assets/css/datepicker.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/ace/assets/css/bootstrap-timepicker.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/ace/assets/css/daterangepicker.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/ace/assets/css/colorpicker.css" />

		<!-- fonts -->

		<link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/ace/assets/css/css.css" />

		<!-- ace styles -->

		<link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/ace/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/ace/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/ace/assets/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/ace/assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->

		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/html5shiv.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/respond.min.js"></script>
		<![endif]-->
		
	</head>

	<body>
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							${sys.appName}
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">

						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="${pageContext.request.contextPath}/scripts/ace/assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>Welcome,</small>
									Jason
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#">
										<i class="icon-cog"></i>
										Settings
									</a>
								</li>

								<li>
									<a href="#">
										<i class="icon-user"></i>
										Profile
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="#">
										<i class="icon-off"></i>
										Logout
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<button class="btn btn-success">
								<i class="icon-signal"></i>
							</button>

							<button class="btn btn-info">
								<i class="icon-pencil"></i>
							</button>

							<button class="btn btn-warning">
								<i class="icon-group"></i>
							</button>

							<button class="btn btn-danger">
								<i class="icon-cogs"></i>
							</button>
						</div>

						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
					</div><!-- #sidebar-shortcuts -->

					<ul class="nav nav-list">
						<li>
							<a  href="${pageContext.request.contextPath}/admin">
								<i class="icon-dashboard"></i>
								<span class="menu-text"> 控制台 </span>
							</a>
						</li>

						<!-- 系统管理 -->
						<li class="open">
							<a href="#" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> 系统管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu" style="display: block;">
								<li>
									<a href="${pageContext.request.contextPath}/admin/userManager">
										<i class="icon-double-angle-right"></i>
										用户列表
									</a>
								</li>

								<li class="active">
									<a href="${pageContext.request.contextPath}/admin/userAdd">
										<i class="icon-double-angle-right"></i>
										新增用户
									</a>
								</li>

								<li>
									<a href="jqgrid.html">
										<i class="icon-double-angle-right"></i>
										菜单管理
									</a>
								</li>
								<li>
									<a href="jqgrid.html">
										<i class="icon-double-angle-right"></i>
										权限设置
									</a>
								</li>
							</ul>
						</li>
						<!-- end 系统管理 -->	
					</ul><!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>

				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">Home</a>
							</li>

							<li>
								<a href="#">系统管理</a>
							</li>
							<li class="active">新增用户</li>
						</ul><!-- .breadcrumb -->

					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								<small>
									<i class="icon-double-angle-right"></i>
									用户基本数据新增
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<form class="form-horizontal" role="form">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 用户名 </label>
										<div class="col-sm-9">
											<input type="text" id="form-field-1" placeholder="用户名" class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2"> 密码 </label>
										<div class="col-sm-9">
											<input type="text" id="form-field-2" placeholder="密码" class="col-xs-10 col-sm-5" />
										</div>
									</div>
									
									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2"> 出生日期 </label>
										<div class="col-sm-3">  
											<div class="input-group">
												<input class="form-control date-picker" id="id-date-picker-1" type="text" placeholder="出生日期" data-date-format="yyyy-mm-dd" />
												<span class="input-group-addon">
													<i class="icon-calendar bigger-110"></i>
												</span>
											</div>
										</div>
									</div>
									
									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2"> 职位 </label>
										<div class="col-sm-9">
											<input type="text" id="form-field-2" placeholder="职位" class="col-xs-10 col-sm-5" />
										</div>
									</div>
									
									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2"> 出生地 </label>
										<div class="col-sm-9">
											<input type="text" id="form-field-2" placeholder="出生地" class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>

									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" type="button" onclick="saveFunc()">
												<i class="icon-ok bigger-110"></i>
												保存
											</button>

											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="icon-undo bigger-110"></i>
												重置
											</button>
										</div>
									</div>

							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->

		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/jquery-2.0.3.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/jquery-1.10.2.min.js"></script>
		<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='${pageContext.request.contextPath}/scripts/ace/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
		<script type="text/javascript">
		 window.jQuery || document.write("<script src='${pageContext.request.contextPath}/scripts/ace/assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
		</script>
		<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='${pageContext.request.contextPath}/scripts/ace/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="${pageContext.request.contextPath}/scripts/ace/assets/js/excanvas.min.js"></script>
		<![endif]-->

		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/chosen.jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/fuelux/fuelux.spinner.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/date-time/bootstrap-timepicker.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/date-time/moment.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/date-time/daterangepicker.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/bootstrap-colorpicker.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/jquery.knob.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/jquery.autosize.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/jquery.maskedinput.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/bootstrap-tag.min.js"></script>

		<!-- ace scripts -->

		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/ace-elements.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/ace.min.js"></script>



		<link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/artDialog/css/ui-dialog.css">
		<script src="${pageContext.request.contextPath}/scripts/artDialog/dist/dialog-min.js"></script>
		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			var ENV = '${pageContext.request.contextPath}';
			$(function($) {
				
				$('.date-picker').datepicker({autoclose:true}).next().on(ace.click_event, function(){
					$(this).prev().focus();
				});
			});
			
			function saveFunc(){
				/* var d = dialog({
				    content: '处理中...'
				});
				d.show(); */
				
				var pdialog = dialog({
				    title: '提示',
				    content: '    确定保存该信息？    ',
				    okValue: '确定',
				    ok: function () {
				    	pdialog.close().remove();
				    	var dia = dialog({
						    content: '处理中...'
						});
						dia.showModal();
						$.post(ENV+"/admin/user/add",{},function(data){
							dia.close().remove();
							if(data.success){
								var d = dialog({
								    content: '添加成功，2秒后跳转到列表中'
								});
								d.show();
								setTimeout(function () {
								    d.close().remove();
								    window.location.href = ENV+"/admin/userManager";
								}, 2000);						
							}else{
								var d = dialog({
								    content: '添加失败'
								});
								d.show();
								setTimeout(function () {
								    d.close().remove();
								}, 1500);
							}
						},'json');
				        return false;
				    },
				    cancelValue: '取消',
				    cancel: function () {}
				}).width(230);
				pdialog.showModal();
				
			}
		</script>
</body>
</html>
