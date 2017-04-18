<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>我的预约</title>

    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="../assets/css2/bootstrap.min.css" />
    <link rel="stylesheet" href="../assets/css2/font-awesome.min.css" />


    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="../assets/css/datepicker.css">
    <!-- text fonts -->
    <link rel="stylesheet" href="../assets/css2/ace-fonts.css" />

    <!-- ace styles -->
    <link rel="stylesheet" href="../assets/css2/ace.min.css" id="main-ace-style" />

    <!--[if lte IE 9]>
			<link rel="stylesheet" href="../assets/css2/ace-part2.min.css" />
		<![endif]-->
    <link rel="stylesheet" href="../assets/css2/ace-skins.min.css" />
    <link rel="stylesheet" href="../assets/css2/ace-rtl.min.css" />
    <link rel="stylesheet" href="../assets/css2/home.css">
    <!--[if lte IE 9]>
		  <link rel="stylesheet" href="../assets/css2/ace-ie.min.css" />
		<![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="../assets/js2/ace-extra.min.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
		<script src="../assets/js2/html5shiv.min.js"></script>
		<script src="../assets/js2/respond.min.js"></script>
		<![endif]-->
</head>

<body class="no-skin">
    <jsp:include page="menu.jsp"></jsp:include>
    

        <!-- 主体 -->
        <div class="main-content">
            <!-- #section:basics/content.breadcrumbs -->
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try {
                        ace.settings.check('breadcrumbs', 'fixed')
                    } catch (e) {}
                </script>
                <!--路径导航-->
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="home.html">首页</a>
                    </li>
                    <li>预约咨询</li>
                    <li class="active">我的预约</li>
                    <!--	<li class="active">Dashboard</li>-->
                </ul>
                <!-- /.breadcrumb -->
            </div>

            <!-- /section:basics/content.breadcrumbs -->
            <div class="page-content">
                <div class="page-content-area">
                    <div class="row">
                        <!--必须整体包含在这里-->
                        <div class="col-md-12">
                            <div class="row">
                                <!--正文-->
                                <div class="col-md-12">
                                    <form action="test.php" id="date" method="post" class="form-horizontal">
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">预约日期</label>
                                            <div class="col-md-2">
                                                <div class="input-group date" id="dateSelect">
                                                    <input type="text" class="form-control" name="dateSelect">
                                                    <span class="input-group-addon">
                                                            <span class="glyphicon glyphicon-calendar"></span>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">咨询师</label>
                                            <div class="col-md-2">
                                                <select name="counselor" style="width:100%">
                                                    <option value="0">--请选择--</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-8 text-center">
                                                <input type="submit" value="查询" class="btn btn-info">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!--/.row-->

                        </div>
                        <!-- /.page-content-area -->
                    </div>
                    <!-- /.page-content -->
                </div>
                <!-- /.main-content -->
                <div class="footer">
                    <div class="footer-inner">
                        <!-- #section:basics/footer -->
                        <div class="footer-content">
                            <span class="bigger-120">
							<span class="blue bolder">安阳工学院</span> &nbsp;Copyright©2016-2020 &nbsp;豫ICP备10003654
                            </span>
                        </div>

                        <!-- /section:basics/footer -->
                    </div>
                </div>


                <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
                    <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
                </a>
            </div>
            <!-- /.main-container -->

            <!-- basic scripts -->

            <!--[if !IE]> -->
            <script type="text/javascript">
                window.jQuery || document.write("<script src='../assets/js2/jquery.min.js'>" + "<" + "/script>");
            </script>

            <!-- <![endif]-->

            <!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='../assets/js2/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
            <script type="text/javascript">
                if ('ontouchstart' in document.documentElement) document.write("<script src='../assets/js2/jquery.mobile.custom.min.js'>" + "<" + "/script>");
            </script>
            <script src="../assets/js2/bootstrap.min.js"></script>

            <!-- page specific plugin scripts -->

            <!--[if lte IE 8]>
		  <script src="../assets/js2/excanvas.min.js"></script>
		<![endif]-->
            <script src="../assets/js2/jquery-ui.custom.min.js"></script>
            <script src="../assets/js2/jquery.ui.touch-punch.min.js"></script>
            <script src="../assets/js2/jquery.easypiechart.min.js"></script>
            <script src="../assets/js2/jquery.sparkline.min.js"></script>
            <script src="../assets/js2/flot/jquery.flot.min.js"></script>
            <script src="../assets/js2/flot/jquery.flot.pie.min.js"></script>
            <script src="../assets/js2/flot/jquery.flot.resize.min.js"></script>
            <script src="../assets/js2/date-time/bootstrap-datepicker.min.js"></script>
            <script src="../assets/js2/date-time/locales/bootstrap-datepicker.zh-CN.js"></script>
            <script src="../assets/js2/bootstrapValidator.min.js"></script>
            <script>
                $(function () {
                    var $dateSelect = $("#dateSelect");
                    if ($dateSelect.type !== 'date') { //if browser doesn't support "date" input
                        $dateSelect.datepicker({
                            autoclose: true,
                            todayHighlight: true,
                            language: 'zh-CN',
                            startDate: new Date()
                        });
                    }
                    $('#date').bootstrapValidator({
                        fields: {
                            dateSelect: {
                                validators: {
                                    notEmpty: {
                                        message: '日期不能为空'
                                    }
                                }
                            }
                        }
                    });
                    $dateSelect.on('hide', function (e) {
                        $('#date').data('bootstrapValidator').updateStatus('dateSelect', 'NOT_VALIDATED', null).validateField('dateSelect');
                    });

                    $($(".light-blue")[1]).on("click",function(){
                        window.location="index.html";
                    }); 
                });
            </script>

            <!-- ace scripts -->
            <script src="../assets/js2/ace-elements.min.js"></script>
            <script src="../assets/js2/ace.min.js"></script>

</html>