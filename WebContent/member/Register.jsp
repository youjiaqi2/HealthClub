<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <title>Client Register</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link href="../css/right.css" rel="stylesheet" type="text/css" />
   <style>
     label,input,p{  font-family:"微软雅黑";  }
   </style>
   <script language="JavaScript" type="text/javascript"src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
   <script src="../js/myJS/RegisterAddRow.js" type="text/javascript"></script>
</head>

<body id="ClientRegisterPage">
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
							<h2>Register</h2>
                            <%
                           		  String errorInfo = "";
                                  if(request.getAttribute("errorInfo")!=null){
                                	   errorInfo = request.getAttribute("errorInfo").toString();
                                  }
                            %>
                            <p>How to Ask：<br>
							            Is your question about programming?<br>
                                        We prefer questions that can be answered, not just discussed.<br>
                                        Provide details. Share your research.<br>
                                        If your question is about this website, ask it on meta instead.
                            </p>
                            <p id="hintLabel" style="color:red;"><%=errorInfo %></p>
							<form id="register-form"   action="Register" method="post">
								<fieldset>
								    <div class="cardField">
									    <label for="identity">卡类型:</label>
                                        <input type="radio" name="cardType" value="simple"><font face="微软雅黑">个人卡</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="radio" name="cardType" value="family"><font face="微软雅黑">家庭卡</font>
                                    </div>
                                    
									<div class="field"><label for="password">密码:</label><input type="password" id="password" name="password" value=""/></div>
									<div class="field"><label for="rePassword">确认密码:</label><input type="password" id="rePassword" name="rePassword" value=""/></div>
      								<%
      								   String address = "";
									   if(request.getParameter("address")!=null){
										   address = request.getParameter("address");
									   }
      								%>
                                     
									<div class="field"><label for="address">家庭住址:</label><input type="text" id="address" name="address" value="<%=address %>"/></div>
									<div class="field"><label for="memberField">成员:</label></div>
									
									<div class="memberField" id="memberField" style="display: none;">
									   	<label for="memberName">姓名:</label><input type="text" id="memberName" name="memberName" value=""/>
									   	<label for="memberAge">年龄:</label><input type="text" id="memberAge" name="memberAge" value=""/>
									   	<label for="memberContact">联系方式:</label><input type="text" id="memberContact" name="memberContact" value=""/>
										<img src="../images/delMemberButton.png" width="18px" height="18px" onclick='deleteMember(this)' >
									</div>
									
									<div class="field"  id="memberBegin" style="display: none;"><label id="hiddenCount" for="member"></label></div>
									
									<div id="add"></div>
									
									<div class="memberField" id="memberField" >
									   	<label for="memberName">姓名:</label><input type="text" id="memberName" name="memberName" value=""/>
									   	<label for="memberAge">年龄:</label><input type="text" id="memberAge" name="memberAge" value=""/>
									   	<label for="memberContact">联系方式:</label><input type="text" id="memberContact" name="memberContact" value=""/>
									    <img name="addImg" src="../images/addMemberButton.png" width="18px" height="18px" onclick='addMember()' >
									</div>
									
									<div class="alignright">
										<a  href="#"  onclick="document.getElementById('register-form').submit()"><strong>Send Your Question!</strong></a>
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
<c:import url="../member/RightOnlyFooter.jsp"></c:import>
</body>
</html>