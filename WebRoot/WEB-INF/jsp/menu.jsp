<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'menu.jsp' starting page</title>
    
	<meta http-equiv="pragma" contehttp://localhost:8080/xljk/home.htmlnt="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <!-- 头部 -->
    
    <div id="navbar" class="navbar navbar-default">
        <script type="text/javascript">
            try {
                ace.settings.check('navbar', 'fixed')
            } catch (e) {}
        </script>

        <div class="navbar-container" id="navbar-container">
            <!-- #section:basics/sidebar.mobile.toggle -->
            <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler">
                <span class="sr-only">安工心理测评管理系统</span>

                <span class="icon-bar"></span>

                <span class="icon-bar"></span>

                <span class="icon-bar"></span>
            </button>

            <!-- /section:basics/sidebar.mobile.toggle -->
            <div class="navbar-header pull-left">
                <!-- #section:basics/navbar.layout.brand -->
                <a href="home.html" class="navbar-brand">
                    <small>
							<img src="${pageContext.request.contextPath}/assets/images/logo.png" style="width:34px;height:34px;" title="安阳工学院" alt="logo">
							安工心理测评管理系统
						</small>
                </a>

                <!-- /section:basics/navbar.layout.brand -->

                <!-- #section:basics/navbar.toggle -->

                <!-- /section:basics/navbar.toggle -->
            </div>

            <div class="navbar-buttons navbar-header pull-right" role="navigation">
                <ul class="nav ace-nav">

                    <li class="green">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
                            <span class="badge badge-success">5</span>
                        </a>

                        <ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
                            <li class="dropdown-header">
                                <i class="ace-icon fa fa-envelope-o"></i> 5条消息
                            </li>

                            <li class="dropdown-content">
                                <ul class="dropdown-menu dropdown-navbar">
                                    <li>
                                        <a href="#">
                                            <img src="${pageContext.request.contextPath}/assets/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
                                            <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Alex:</span> Ciao sociis natoque penatibus et auctor ...
                                            </span>

                                            <span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>a moment ago</span>
                                            </span>
                                            </span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <img src="${pageContext.request.contextPath}/assets/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
                                            <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Susan:</span> Vestibulum id ligula porta felis euismod ...
                                            </span>

                                            <span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>20 minutes ago</span>
                                            </span>
                                            </span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <img src="${pageContext.request.contextPath}/assets/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
                                            <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Bob:</span> Nullam quis risus eget urna mollis ornare ...
                                            </span>

                                            <span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>3:15 pm</span>
                                            </span>
                                            </span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <img src="${pageContext.request.contextPath}/assets/avatars/avatar2.png" class="msg-photo" alt="Kate's Avatar" />
                                            <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Kate:</span> Ciao sociis natoque eget urna mollis ornare ...
                                            </span>

                                            <span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>1:33 pm</span>
                                            </span>
                                            </span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <img src="${pageContext.request.contextPath}/assets/avatars/avatar5.png" class="msg-photo" alt="Fred's Avatar" />
                                            <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Fred:</span> Vestibulum id penatibus et auctor ...
                                            </span>

                                            <span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>10:09 am</span>
                                            </span>
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                            <li class="dropdown-footer">
                                <a href="inbox.html">
										查看所有消息
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
                            </li>
                        </ul>
                    </li>

                    <!-- #section:basics/navbar.user_menu -->
                    <li class="light-blue">
                        <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                            <img class="nav-user-photo" src="${pageContext.request.contextPath}/assets/avatars/user.jpg" alt="Jason's Photo" />
                            <span class="user-info">
									<small>欢迎登录,</small>
									Jason
								</span>

                            <i class="ace-icon fa fa-caret-down"></i>
                        </a>

                        <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                            <li>
                                <a href="profile.html">
                                    <i class="ace-icon fa fa-user"></i> 个人资料
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="light-blue">
                        <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                            <i class="ace-icon fa fa-power-off" style="color:red"></i>
                            <span class="">退出</span>
                        </a>
                    </li>

                    <!-- /section:basics/navbar.user_menu -->
                </ul>
            </div>

            <!-- /section:basics/navbar.dropdown -->
        </div>
        <!-- /.navbar-container -->
    </div>
       <!-- /section:basics/navbar.layout -->
    <div class="main-container" id="main-container">
        <script type="text/javascript">
            try {
                ace.settings.check('main-container', 'fixed')
            } catch (e) {}
        </script>

        <!-- #section:basics/sidebar -->
        <div id="sidebar" class="sidebar responsive">
            <script type="text/javascript">
                try {
                    ace.settings.check('sidebar', 'fixed')
                } catch (e) {}
            </script>

            <!--侧边栏-->
            <ul class="nav nav-list">
                <li class="">
                    <a href="#" class="dropdown-toggle">
                        <i class="menu-icon fa fa-cogs"></i>
                        <span class="menu-text">基础设置</span>

                        <b class="arrow fa fa-angle-down"></b>
                    </a>
                    <b class="arrow"></b>
                    <ul class="submenu">
                        <li class="">
                            <a href="settings.html">
                                <i class="menu-icon fa fa-caret-right"></i> 系统设置
                            </a>

                            <b class="arrow"></b>
                        </li>
                        <li class="">
                            <a href="databackup.html">
                                <i class="menu-icon fa fa-caret-right"></i> 数据备份
                            </a>

                            <b class="arrow"></b>
                        </li>
                        <li class="">
                            <a href="rolemanage.html">
                                <i class="menu-icon fa fa-caret-right"></i> 角色管理
                            </a>

                            <b class="arrow"></b>
                        </li>
                        <li class="">
                            <a href="membermanage.html">
                                <i class="menu-icon fa fa-caret-right"></i> 成员管理
                            </a>

                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>

                <li class="">
                    <a href="#" class="dropdown-toggle">
                        <i class="menu-icon fa fa-pencil-square-o"></i>
                        <span class="menu-text"> 心理测验</span>

                        <b class="arrow fa fa-angle-down"></b>
                    </a>

                    <b class="arrow"></b>

                    <ul class="submenu">
                        <li class="">
                            <a href="gaugemanage.html">
                                <i class="menu-icon fa fa-caret-right"></i> 量表管理
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="guageallot.html">
                                <i class="menu-icon fa fa-caret-right"></i> 量表分配
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="gaugeinput.html">
                                <i class="menu-icon fa fa-caret-right"></i> 测试结果录入
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="gaugecheck.html">
                                <i class="menu-icon fa fa-caret-right"></i> 查看测试结果
                            </a>

                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>

                <li class="">
                    <a href="#" class="dropdown-toggle">
                        <i class="menu-icon fa fa-warning"></i>
                        <span class="menu-text">危机预警 </span>

                        <b class="arrow fa fa-angle-down"></b>
                    </a>

                    <b class="arrow"></b>

                    <ul class="submenu">
                        <li class="">
                            <a href="warnsee.html">
                                <i class="menu-icon fa fa-caret-right"></i> 查看预警
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="warnsetting.html">
                                <i class="menu-icon fa fa-caret-right"></i> 预警设置
                            </a>

                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>

                <li class="">
                    <a href="#" class="dropdown-toggle">
                        <i class="menu-icon fa fa-file-text-o"></i>
                        <span class="menu-text">问卷调查 </span>

                        <b class="arrow fa fa-angle-down"></b>
                    </a>

                    <b class="arrow"></b>

                    <ul class="submenu">
                        <li class="">
                            <a href="questmanage.html">
                                <i class="menu-icon fa fa-caret-right"></i> 问卷管理
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="questallot.html">
                                <i class="menu-icon fa fa-caret-right"></i> 问卷分配
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="questresult.html">
                                <i class="menu-icon fa fa-caret-right"></i> 调查结果
                            </a>

                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>
                <li class="active open">
                    <a href="#" class="dropdown-toggle">
                        <i class="menu-icon fa fa-comments"></i>
                        <span class="menu-text">预约咨询</span>

                        <b class="arrow fa fa-angle-down"></b>
                    </a>

                    <b class="arrow"></b>

                    <ul class="submenu">
                        <li class="">
                            <a href="appointsetting.html">
                                <i class="menu-icon fa fa-caret-right"></i> 参数设置
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="appointmanage.html">
                                <i class="menu-icon fa fa-caret-right"></i> 预约管理
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="active">
                            <a href="appointcoach.html">
                                <i class="menu-icon fa fa-caret-right"></i> 个案辅导
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="appointmy.html">
                                <i class="menu-icon fa fa-caret-right"></i> 我的预约
                            </a>

                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>

                <li class="">
                    <a href="#" class="dropdown-toggle">
                        <i class="menu-icon fa fa-book"></i>
                        <span class="menu-text">档案管理 </span>

                        <b class="arrow fa fa-angle-down"></b>
                    </a>

                    <b class="arrow"></b>

                    <ul class="submenu">
                        <li class="">
                            <a href="archivestest.html">
                                <i class="menu-icon fa fa-caret-right"></i> 测评档案
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="archivespersonal.html">
                                <i class="menu-icon fa fa-caret-right"></i> 个案档案
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="archivesquest.html">
                                <i class="menu-icon fa fa-caret-right"></i> 问卷档案
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="archivesall.html">
                                <i class="menu-icon fa fa-caret-right"></i> 综合档案
                            </a>

                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>

                <li class="">
                    <a href="recyclebin.html">
                        <i class="menu-icon fa fa-trash-o"></i>
                        <span class="menu-text">回收站</span>
                    </a>

                    <b class="arrow"></b>
                </li>
            </ul>
            <!-- /.nav-list -->

            <!-- #section:basics/sidebar.layout.minimize -->
            <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
                <i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
            </div>

            <!-- /section:basics/sidebar.layout.minimize -->
            <script type="text/javascript">
                try {
                    ace.settings.check('sidebar', 'collapsed')
                } catch (e) {}
            </script>
        </div>
    
  </body>
</html>
