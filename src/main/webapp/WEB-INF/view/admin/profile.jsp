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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/ace/assets/css/jquery.gritter.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/ace/assets/css/select2.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/ace/assets/css/bootstrap-editable.css" />

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
								<img class="nav-user-photo" src="${pageContext.request.contextPath}/scripts/ace/assets/avatars/user.jpg" alt="${curUser.username}'s Photo" />
								<span class="user-info">
									<small>欢迎光临,</small>
									${curUser.username}
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">

								<li>
									<a href="${pageContext.request.contextPath}/admin/profile">
										<i class="icon-user"></i>
										个人资料
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="javascript:(void)" onclick="exit()">
										<i class="icon-off"></i>
										退出
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

								<li>
									<a href="${pageContext.request.contextPath}/admin/userAdd">
										<i class="icon-double-angle-right"></i>
										新增用户
									</a>
								</li>

								<li>
									<a href="#">
										<i class="icon-double-angle-right"></i>
										菜单管理
									</a>
								</li>
								<li>
									<a href="#">
										<i class="icon-double-angle-right"></i>
										权限设置
									</a>
								</li>
								<li class="active">
									<a href="${pageContext.request.contextPath}/admin/profile">
										<i class="icon-double-angle-right"></i>
										个人资料
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
							<li class="active">个人资料</li>
						</ul><!-- .breadcrumb -->

					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								<small>
									<i class="icon-double-angle-right"></i>
									用户基本信息
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div>
									<div id="user-profile-1" class="user-profile row">
										<div class="col-xs-12 col-sm-3 center">
											<div>
												<span class="profile-picture">
													<img id="avatar" class="editable img-responsive" alt="Alex's Avatar" src="${pageContext.request.contextPath}/scripts/ace/assets/avatars/profile-pic.jpg" />
												</span>

												<div class="space-4"></div>

												<div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
													<div class="inline position-relative">
														<a href="#" class="user-title-label dropdown-toggle">
															<i class="icon-circle light-green middle"></i>
															&nbsp;
															<span class="white">${curUser.username}</span>
														</a>
													</div>
												</div>
											</div>

											<div class="space-6"></div>

											<div class="profile-contact-info">
												<div class="profile-contact-links align-left">
													<a class="btn btn-link" href="#">
														<i class="icon-plus-sign bigger-120 green"></i>
														修改资料
													</a>

													<a class="btn btn-link" href="#">
														<i class="icon-envelope bigger-120 pink"></i>
														修改密码
													</a>

													<!-- <a class="btn btn-link" href="#">
														<i class="icon-globe bigger-125 blue"></i>
														www.alexdoe.com
													</a> -->
												</div>

											</div>

											<div class="hr hr12 dotted"></div>

											<div class="clearfix">
												<div class="grid2">
													<span class="bigger-175 blue">25</span>

													<br />
													Followers
												</div>

												<div class="grid2">
													<span class="bigger-175 blue">12</span>

													<br />
													Following
												</div>
											</div>

											<div class="hr hr16 dotted"></div>
										</div>

										<div class="col-xs-12 col-sm-9">

											<div class="profile-user-info profile-user-info-striped">
												<div class="profile-info-row">
													<div class="profile-info-name"> 用户名 </div>

													<div class="profile-info-value">
														<span class="editable" id="username">${curUser.username}</span>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name"> 所在地 </div>

													<div class="profile-info-value">
														<i class="icon-map-marker light-orange bigger-110"></i>
														<span class="editable" id="country">重庆市</span>
														<span class="editable" id="city">渝北区</span>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name"> 年龄 </div>

													<div class="profile-info-value">
														<span class="editable" id="age">38</span>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name"> 注册时间 </div>

													<div class="profile-info-value">
														<span class="editable" id="signup">20/06/2010</span>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name"> 最后登录时间 </div>

													<div class="profile-info-value">
														<span class="editable" id="login">3 hours ago</span>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name"> 关于我 </div>

													<div class="profile-info-value">
														<span class="editable" id="about">一切皆有可能</span>
													</div>
												</div>
											</div>

											<div class="space-20"></div>

											<div class="widget-box transparent">
												<div class="widget-header widget-header-small">
													<h4 class="blue smaller">
														<i class="icon-rss orange"></i>
														最近操作记录
													</h4>

													<div class="widget-toolbar action-buttons">
														<button class="btn btn-minier btn-yellow">更多</button>
													</div>
												</div>

												<div class="widget-body">
													<div class="widget-main padding-8">
														<div id="profile-feed-1" class="profile-feed">
															<div class="profile-activity clearfix">
																<div>
																	<i class="pull-left thumbicon icon-key btn-info no-hover"></i>
																	<a class="user" href="#"> Alex Doe </a>

																	logged in.
																	<div class="time">
																		<i class="icon-time bigger-110"></i>
																		16 hours ago
																	</div>
																</div>
															</div><!-- 列表 -->
															<div class="profile-activity clearfix">
																<div>
																	<i class="pull-left thumbicon icon-key btn-info no-hover"></i>
																	<a class="user" href="#"> Alex Doe </a>

																	logged in.
																	<div class="time">
																		<i class="icon-time bigger-110"></i>
																		16 hours ago
																	</div>
																</div>
															</div><!-- 列表 -->
															<div class="profile-activity clearfix">
																<div>
																	<i class="pull-left thumbicon icon-key btn-info no-hover"></i>
																	<a class="user" href="#"> Alex Doe </a>

																	logged in.
																	<div class="time">
																		<i class="icon-time bigger-110"></i>
																		16 hours ago
																	</div>
																</div>
															</div><!-- 列表 -->
															
															<div class="profile-activity clearfix">
																<div>
																	<i class="pull-left thumbicon icon-key btn-info no-hover"></i>
																	<a class="user" href="#"> Alex Doe </a>

																	logged in.
																	<div class="time">
																		<i class="icon-time bigger-110"></i>
																		16 hours ago
																	</div>
																</div>
															</div><!-- 列表 -->
															
															<div class="profile-activity clearfix">
																<div>
																	<i class="pull-left thumbicon icon-key btn-info no-hover"></i>
																	<a class="user" href="#"> Alex Doe </a>

																	logged in.
																	<div class="time">
																		<i class="icon-time bigger-110"></i>
																		16 hours ago
																	</div>
																</div>
															</div><!-- 列表 -->
														</div>
													</div>
												</div>
											</div>

											<div class="hr hr2 hr-double"></div>

											<div class="space-6"></div>
										</div>
									</div>
								</div>

								<!-- PAGE CONTENT ENDS -->
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
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/jquery.gritter.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/bootbox.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/jquery.slimscroll.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/jquery.easy-pie-chart.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/jquery.hotkeys.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/bootstrap-wysiwyg.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/select2.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/fuelux/fuelux.spinner.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/x-editable/bootstrap-editable.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/x-editable/ace-editable.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/jquery.maskedinput.min.js"></script>

		<!-- ace scripts -->

		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/ace-elements.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			jQuery(function($) {
				/* $('#profile-feed-1').slimScroll({
					height: '250px',
					alwaysVisible : true
				}); */
			});
		</script>
</body>
</html>
