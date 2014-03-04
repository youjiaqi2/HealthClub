<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Client Personal Center</title>
	<link href="RightBigger.css" rel="stylesheet" type="text/css" />
	<style>
     label,input,a,span,p{  font-family:"微软雅黑";  }
	</style>
</head>

<body id="ClientPersonalCenterPage">
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
		
		<ul class="nav">
			<li><a href="ClientHome.jsp" class="first">网站首页</a></li>
			<li><a href="ClientActivity.jsp">参加活动</a></li>
			<li><a href="ClientPersonalCenter.jsp" class="current">个人中心</a></li>
			<li><a href="ClientCoach.jsp">教练团队</a></li>
			<li><a href="ClientAboutUs.jsp" >关于我们</a></li>
			
		</ul>
	</div>
</div>

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
						<div class="inner">
							<h2>Site Map</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ornare lobortis elit vel venenatis. Vivamus magna arcu, placerat in elementum quis, luctus et magna. Aenean pharetra ultrices nibh, eu tempor enim commodo eu. Mauris faucibus eros nec ligula molestie accumsan. Fusce tempus porttitor porta. In pellentesque suscipit ipsum nec tincidunt.</p>
							<ul>
								<li><a href="home.html">Home</a></li>
								<li><a href="about-us.html">About Us</a></li>
								<li><a href="articles.html">Articles</a>
									<ul>
										<li><a href="article.html">Article 1</a></li>
										<li><a href="article.html">Article 2</a></li>
										<li><a href="article.html">Article 3</a></li>
									</ul>
								</li>
								<li><a href="contact-us.html">Contact Us</a></li>
							</ul>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ornare lobortis elit vel venenatis. Vivamus magna arcu, placerat in elementum quis, luctus et magna. Aenean pharetra ultrices nibh, eu tempor enim commodo eu.</p>
							Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem.
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
							<h2>Site Map</h2>
							
							<ul>
								<li><a href="home.html">Home</a></li>
								<li><a href="about-us.html">About Us</a></li>
								<li><a href="articles.html">Articles</a>
									<ul>
										<li><a href="article.html">Article 1</a></li>
										<li><a href="article.html">Article 2</a></li>
										<li><a href="article.html">Article 3</a></li>
									</ul>
								</li>
								<li><a href="contact-us.html">Contact Us</a></li>
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
<c:import url="RightBiggerFooter.jsp"></c:import>

</body>

</html>