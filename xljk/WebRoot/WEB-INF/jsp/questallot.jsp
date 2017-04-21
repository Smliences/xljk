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
    <title>问卷分配</title>

    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="../assets/css2/bootstrap.min.css" />
    <link rel="stylesheet" href="../assets/css2/font-awesome.min.css" />

    <!-- page specific plugin styles -->

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
    <style>
        #destribute {
            margin-top: 15px;
        }
        
        #setting {
            box-sizing: border-box;
            padding-top: 15px;
        }
        
        .ml {
            margin-left: 8.333%
        }
        
        @media screen and (max-width:991px) {
            .ml {
                margin-left: 0
            }
        }
    </style>
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
                    <li class="active">问卷调查</li>
                    <li class="active">问卷分配</li>
                </ul>
                <!-- /.breadcrumb -->
            </div>

            <!-- /section:basics/content.breadcrumbs -->
            <div class="page-content">
                <div class="page-content-area">
                    <div class="row">
                        <!--必须整体包含在这里-->
                        <div class="col-xs-12">
                            <div class="row">
                                <!--正文-->
                                <div class="col-sm-12">
                                    <div class="container-fluid">
                                       <form action="test.php">
                                        <div class="row">
                                            <div class="col-md-7 scroll widget-box ui-sortable-handle" style="min-height:250px">
                                                <div class="widget-header">
                                                    <h5 class="widget-title bigger lighter">
													选择成员
												</h5>
                                                </div>
                                                <table id="quest" class="table table-striped table-bordered table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th>序号</th>
                                                            <th>登录名</th>
                                                            <th>姓名</th>
                                                            <th>角色名称</th>
                                                        </tr>
                                                        <tbody></tbody>
                                                    </thead>
                                                </table>
                                            </div>
                                            <div class="col-md-4 scroll widget-box ui-sortable-handle ml" style="min-height:250px">
                                                <div class="widget-header">
                                                    <h5 class="widget-title bigger lighter">
													问卷选择
												</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12 foot text-center">
                                                    <input class="btn btn-info" type="submit" value="分配">
                                                </div>
                                        </div>
                                    </form>
                                        <div class="row">
                                            <div class="col-md-12 widget-box ui-sortable-handle" style="min-height:250px">
                                                <div class="widget-header">
                                                    <h5 class="widget-title bigger lighter">
													分配记录
												</h5>
                                                </div>
                                                <table class="table table-striped table-bordered table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th>序号</th>
                                                            <th>量表名称</th>
                                                            <th>登录名</th>
                                                            <th>姓名</th>
                                                            <th>分配时间</th>
                                                            <th>作答状态</th>
                                                            <th>操作</th>
                                                        </tr>
                                                    </thead>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
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
            <script src="../assets/js2/jquery.dataTables.min.js"></script>
            <script src="../assets/js2/jquery.dataTables.bootstrap.js"></script>
            <script>
                $(document).ready(function () {
                    $('#quest').dataTable({
                        "bSort": false,
                        "oLanguage": {
                            "sInfoEmpty": "没有数据",
                            "sZeroRecords": "没有检索到数据"
                        },
                        "aoColumns": [

                            {
                                "sTitle": "<label class='position-relative'><input type='checkbox' class='ace' id='ctrl'><span class='lbl'></span></label>",
                                "mDataProp": null,
                                "sWidth": "20px",
                                "sDefaultContent": "<label class='position-relative'><input type='checkbox' class='ace'><span class='lbl'></span></label>",
                                "bSortable": false
                            },
                            {

                                bSearchable: true,
                                bSortable: false
                            },
                            {

                                bSearchable: true,
                                bSortable: false
                             },
                            {

                                bSearchable: true,
                                bSortable: false
                             }

                        ],
                        "bProcessing": true,
                        "searching": false,
                        "bLengthChange": false,
                        "bAutoWidth": true,
                        "bPaginate": false,
                        "bInfo": false,
                        "scrollY": "100px",
                        "sScrollX": "100%",
                        "sScrollXInner": "100%",
                        "sAjaxSource": 'homedata.json'
                    });
                    $("#ctrl").on('click', function () {
                        var that = this;
                        $(this).parents('.dataTables_scrollHead').next().find("tr>td:first-child input:checkbox")
                            .each(function () {
                                this.checked = that.checked;
                                $(this).closest('tr').toggleClass('selected');
                            });
                    });

                });
                    $($(".light-blue")[1]).on("click",function(){
                        window.location="index.html";
                    });
            </script>

            <!-- ace scripts -->
            <script src="../assets/js2/ace-elements.min.js"></script>
            <script src="../assets/js2/ace.min.js"></script>

</html>