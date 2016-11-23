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
								<li class="active">
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
								<li>
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
							<li class="active">用户列表</li>
						</ul><!-- .breadcrumb -->

					</div>
		
					<div class="page-content">
						<p>
							<button class="btn btn-sm btn-warning" onclick="addUser()">
								<i class="icon-fire bigger-110"></i>
								<span class="bigger-110 no-text-shadow">新增用户</span>
							</button>
						</p>
						<div class="row" style="background-color: white;">
							<div class="col-xs-12" style="background-color: white;">
								<table id="example" cellspacing="0" width="100%" class="table table-striped table-bordered table-hover">
							        <thead>
							            <tr>
							                <th>id</th>
							                <th>Name</th>
							                <th>Position</th>
							                <th>Office</th>
							                <th>Age</th>
							                <th>Startdate</th>
							                <th>Salary</th>
							                <th></th>
							            </tr>
							        </thead>
							        <tbody>
							        </tbody>
							    </table>
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->


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

		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/jquery.dataTables.bootstrap.js"></script>

		<!-- ace scripts -->

		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/ace-elements.min.js"></script>
		<script src="${pageContext.request.contextPath}/scripts/ace/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			var ENV = '${pageContext.request.contextPath}';
			jQuery(function($) {
				/*
				var oTable1 = $('#sample-table-2').dataTable( {
				"aoColumns": [
			      { "bSortable": false },
			      null, null,null, null, null,
				  { "bSortable": false }
				] } );
				*/
				$('#example').dataTable({
					"sAjaxSource": ENV+"/admin/user/loadUsers",
					"bFilter": false,
					"bLengthChange": false,
					/* "aLengthMenu": [
				        [ 50, 100, 150, -1 ],
				        [ '50 rows', '100 rows', '150 rows', 'Show all' ]
				    ], */
					"aoColumnDefs":[{
			       	 	"aTargets":[7],
			       		"mRender": function(full, type, data) { // 返回自定义内容
							var r = '<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">';
								r+= '<a class="green" href="#" onclick="editFun('+data.ID+')">';
								r+= '<i class="icon-pencil bigger-120"></i>';
								r+= '</a>';

								r+= '<a class="red" href="#" onclick="removeFun('+data.ID+')">';
								r+= '<i class="icon-trash bigger-120"></i>';
								r+= '</a>';
								r+= '</div>';

								r+= '<div class="visible-xs visible-sm hidden-md hidden-lg">';
								r+= '<div class="inline position-relative">';
								r+= '<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">';
								r+= '<i class="icon-caret-down icon-only bigger-120"></i>';
								r+= '</button>';

								r+= '<ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">';

								r+= '<li>';
								r+= '<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">';
								r+= '<span class="green">';
								r+= '<i class="icon-edit bigger-120"></i>';
								r+= '</span>';
								r+= '</a>';
								r+= '</li>';

								r+= '<li>';
								r+= '<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">';
								r+= '<span class="red">';
								r+= '<i class="icon-trash bigger-120"></i>';
								r+= '</span>';
								r+= '</a>';
								r+= '</li>';
								r+= '</ul>';
								r+= '</div>';
								r+= '</div>';
			       		 	return r; 
			       	 	}
					}],
					"aoColumns": [{
			             "mData": "ID","bSortable": true,"bVisible":false
			         },{
			             "mData": "Name","bSortable": false
			         }, {
			             "mData": "Position","bSortable": false
			         }, {
			             "mData": "Office","bSortable": false
			         }, {
			             "mData": "Age","bSortable": false
			         }, {
			             "mData": "Startdate","bSortable": false
			         }, {
			             "mData": "Salary","bSortable": false
			         }, {
			             "mData": "action","bSortable": false
			         }],
			        "oLanguage":{
			        	 "sInfo": "从 _START_ 到 _END_ /共 _TOTAL_ 条数据"
			        }
				});
				/*
				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
				});
			
			
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
				*/
			})
			
			function editFun(id){
				alert(id);
			}
			
			function removeFun(id){
				alert(id);
			}
			
			function addUser(){
				window.location.href = ENV +'/admin/userAdd';
			}
		</script>
</body>
</html>
