<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ClientActivity</title>
	<link href="../css/style.css" rel="stylesheet" type="text/css" />
	<style>
     label,input,a,span,p{  font-family:"微软雅黑";  }
   	</style>
</head>

<body id="ClientActivityPage">
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
		
		<ul class="nav">
			<li><a href="ClientHome.jsp" class="first">网站首页</a></li>
			<li><a href="ClientActivity.jsp" class="current">参加活动</a></li>
			<li><a href="ClientPersonalCenter.jsp">个人中心</a></li>
			<li><a href="ClientCoach.jsp">教练团队</a></li>
			<li><a href="ClientAboutUs.jsp" >关于我们</a></li>
			
		</ul>
	</div>
</div>

<!-- content -->
<div id="content">
   
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
							<ul class="activitys-list">
								<li>
									<h3>Article 1</h3><img alt="" src="../images/img-wrapper2.gif" />
									<p>Article 1 description is to be here. Since we have no idea what your article is about we just put standart "Lorem ipsum" text here. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</p>
									<a href="article.html">Read More</a>
								</li>
								<li>
									<h3>Article 1</h3><img alt="" src="../images/img-wrapper2.gif" />
									<p>Article 1 description is to be here. Since we have no idea what your article is about we just put standart "Lorem ipsum" text here. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</p>
									<a href="article.html">Read More</a>
								</li>
								<li>
									<h3>Article 1</h3><img alt="" src="../images/img-wrapper2.gif" />
									<p>Article 1 description is to be here. Since we have no idea what your article is about we just put standart "Lorem ipsum" text here. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</p>
									<a href="article.html">Read More</a>
								</li>

							</ul>
							
						    <div class=alighright>
						    	<a href="#"><strong>上一页</strong></a>
								<a href="#"><strong>下一页</strong></a>
						    </div>
							
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
<c:import url="../member/Footer.jsp"></c:import>

</body>
</html>