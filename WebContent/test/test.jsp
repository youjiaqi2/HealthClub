<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>System Manager</title>
	<link href="../css/RightBigger.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<script type="text/javascript">
$(function () {
        $('#contentDisplayDiv').highcharts({
            chart: {
                type: 'column'
            },
            title: {
                text: 'Monthly Average Rainfall'
            },
            subtitle: {
                text: 'Source: WorldClimate.com'
            },
            xAxis: {
                categories: [
                    'Jan',
                    'Feb',
                    'Mar',
                    'Apr',
                    'May',
                    'Jun',
                    'Jul',
                    'Aug',
                    'Sep',
                    'Oct',
                    'Nov',
                    'Dec'
                ]
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'Rainfall (mm)'
                }
            },
            tooltip: {
                headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                    '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
                footerFormat: '</table>',
                shared: true,
                useHTML: true
            },
            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0
                }
            },
            series: [{
                name: 'Tokyo',
                data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]
    
            }, {
                name: 'New York',
                data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3]
    
            }, {
                name: 'London',
                data: [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2]
    
            }, {
                name: 'Berlin',
                data: [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1]
    
            }]
        });
    });
    

		</script>
</head>

<body id="SystemManagerPage">
<script src="../js/Highcharts-3.0.9/js/highcharts.js"></script>
<script src="../js/Highcharts-3.0.9/js/modules/exporting.js"></script>

<!-- header -->
<c:import url="../system/Header.jsp"></c:import>

<!-- content -->
<div id="content">
    <div class="rightContainer">
		<div class="inside">
<!-- box begin -->
			<div class="box alt">
				<div class="left-top-corner">
					<div class="right-top-corner">
						<div class="border-top"></div>
					</div>
				</div>
				<div class="border-left">
					<div class="border-right">
						<div class="inner" id="contentDisplayDiv">
						</div>
					</div>
				</div>
				<div class="left-bot-corner">
					<div class="right-bot-corner">
						<div class="border-bot"></div>
					</div>
				</div>
			</div>
<!-- box end -->
		</div>
	</div>
	<div class="leftContainer">
		<div class="inside">
<!-- box begin -->
			<div class="box alt">
				<div class="left-top-corner">
					<div class="right-top-corner">
						<div class="border-top"></div>
					</div>
				</div>
				<div class="border-left">
					<div class="border-right">
						<div class="inner">
							<h3>经理职责列表</h3>
							<ul>
								<li><a href="home.html">会员统计</a></li>
								<li><a href="about-us.html">俱乐部使用情况</a></li>
							</ul>
							
						</div>
					</div>
				</div>
				<div class="left-bot-corner">
					<div class="right-bot-corner">
						<div class="border-bot"></div>
					</div>
				</div>
			</div>
<!-- box end -->
		</div>
	</div>
</div>

<!-- footer -->
<c:import url="../member/RightBiggerFooter.jsp"></c:import>

</body>

</html>