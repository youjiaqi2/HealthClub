<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>System Waiter</title>
	<link href="../css/style.css" rel="stylesheet" type="text/css" />
	<script language="JavaScript" type="text/javascript"src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="../js/Calendar.js" type="text/javascript"></script>
    <script src="../js/myJS/ActivityAddRow.js" type="text/javascript"></script>
    <style>
        label,input,a,span,p{  font-family:"微软雅黑";  }
    </style>
    <script type="text/javascript">
        var c = new Calendar("c");
        document.write(c);
    </script>
</head>

<body id="SystemWaitermakeActivityPage">
<!-- header -->
<div id="header">
	<div class="container">
		<div class="wrapper">
			<div class="logo">
				<h1>
				 	<a href="ClientHome.jsp">健康俱乐部</a>
				 	<span>每天锻炼一小时,健康生活一辈子</span>
				</h1>
			</div>
		</div>
	</div>
</div>
<!-- content -->
<div id="content">

    <div class="rightBiggerRightContainer">
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

					    <!-- inner begin -->
						<div class="inner" id="makeActivity" >
						   <form id="activityMade-form"   action="MakeActivity" method="post">
								<fieldset>
									<div class="field"><label for="activityName">活动名称:</label><input type="text" id="activityName" name="activityName" value=""/></div>
									<div class="field"><label for="roundField">活动场次:</label></div>
									
									<div class="roundField" id="roundField" style="display: none;">
									   	<label for="time">时间:</label><input type="text" name="time" onfocus="c.showMoreDay = false;c.show(this);" />
										<label for="place">场地:</label><input type="text" id="place" name="place" value=""/>
										<label for="coach">教练:</label><input type="text" id="coach" name="coach" value=""/>
										<img src="../images/delMemberButton.png" width="18px" height="18px" onclick='deleteMember(this)' >
									</div>
									
									<div class="field"  id="roundBegin" style="display: none;"><label id="hiddenCount" ></label></div>
									
									<div id="add" ></div>
									<div class="roundField" id="roundField">
									   	<label for="time">时间:</label><input type="text" name="time" onfocus="c.showMoreDay = false;c.show(this);" />
										<label for="place">场地:</label><input type="text" id="place" name="place" value=""/>
										<label for="coach">教练:</label><input type="text" id="coach" name="coach" value=""/>
									    <img src="../images/addMemberButton.png" width="18px" height="18px" onclick='addMember()' >
									</div>
									
									<div class="field"><label>详情描述:</label><textarea name="description" cols="" rows=""></textarea></div>
									
									<div class="alignright">
										<a  href="#"  onclick="document.getElementById('activityMade-form').submit()"><strong>Send Your Question!</strong></a>
									</div>
									
								</fieldset>
							</form>
						</div>
						<!-- inner end -->
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
	
	<!-- leftContainer -->
	<c:import url="../system/WaiterNav.jsp"></c:import>
	
</div>

<!-- footer -->
	<div id="footer">
		<div class="container">
			<div class="indent">
				<div class="fleft">Copyrights - Type in Your Name Here</div>
				<div class="fright">Popular free templates <a href="http://www.websitetemplatesonline.com" target="_blank">at www.WebsiteTemplatesOnline.com</a>. | <a href="http://www.getjoomlatemplatesfree.com/" title="Free Joomla Themes">Free Joomla Templates Templates</a> Groove.</div>
			</div>
		</div>
	</div>

</body>

</html>