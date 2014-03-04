<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
   <title>System Login</title>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
   <link href="../css/right.css" rel="stylesheet" type="text/css" />
   <style>
     h2,label,input,a,span,p{  font-family:"微软雅黑";  }
   </style>
</head>

<body id="SystemLoginPage">

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
<div id="content"><div class="inner_copy"></div>
	<div class="container">
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
							<h2>请先登录!</h2>
							<%
							   Object hint = request.getAttribute("hint");
							   if(hint==null){
							%>
							<ul>
								<li>
								 	<label>经理职责列表</label>
									<ul>
										<li><label>会员基本状况统计</label></li>
										<li><label>俱乐部每月使用状况统计</label></li>
										<li><label>预测俱乐部未来使用状况</label></li>
							 		</ul>
							 	</li>
								<li>
									<label>服务员职责列表</label>
									<ul>
										<li><label>会员管理(查询信息,修改信息,活动记录,缴费记录)</label></li>
										<li><label>活动管理(制定活动,修改活动,查询活动)</label></li>
										<li><label>记录参加活动的日期,卡号等</label></li>
									</ul>
								</li>
							</ul>
                            <%
							   }else{
                            %>
                            <h3><%=hint.toString() %></h3>
                            <%
							   }
                            %>
                            
							<form id="systemLogin-form" action="SystemLogin" method="post">
								<fieldset>
									<div class="positionField">
									    <label for="position">职务:</label>
                                        <input type="radio" name="position" value="manager"><font face="微软雅黑">经理</font>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="radio" name="position" value="waiter"><font face="微软雅黑">服务员</font>
                                    </div>
								    <div class="field"><label for="id">编号:</label><input type="text" id="id" name="id" value=""/></div>
									<div class="field"><label for="password">密码:</label><input type="password" id="password" name="password" value=""/></div>
									<div class="field"><label></label></div>
									<div class="alignright">
										<a href="#" onClick="document.getElementById('systemLogin-form').submit()"><strong>登录</strong></a>
									</div>
								</fieldset>
							</form>
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