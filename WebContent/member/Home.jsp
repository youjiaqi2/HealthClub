<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@  page import="model.FamilyCard"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <title>ClientHome</title>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
   <link href="../css/style.css" rel="stylesheet" type="text/css" />
   <style>
     label,input,a,span,p{  font-family:"微软雅黑";  }
   </style>
</head>

<body id="ClientHomePage">
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
			<li><a href="../member/ClientHome.jsp" class="first current">网站首页</a></li>
			<li><a href="../member/ClientActivity.jsp">参加活动</a></li>
			<li><a href="../member/ClientPersonalCenter.jsp">个人中心</a></li>
			<li><a href="../member/ClientCoach.jsp">教练团队</a></li>
			<li><a href="../member/ClientAboutUs.jsp">关于我们</a></li>
			
		</ul>
	</div>
</div>

<!-- content -->
<div id="content">
    <div class="leftBiggerRightContainer">
      <div class="inside">
<!-- box begin -->
 			<%
 				Object card = request.getSession().getAttribute("card");
 			 			    String hint = "";
 			 			    if(request.getAttribute("hint")!=null){
 			 			    	hint = request.getAttribute("hint").toString();
 			 			    }
 			 		        if(card==null){
 			%>
			<div class="box alt">
				<div class="left-top-corner">
					<div class="right-top-corner">
						<div class="border-top"></div>
					</div>
				</div>
				<div class="border-left">
					<div class="border-right">
						<div class="inner">
						    <h3>Login</h3>
						    <p><%=hint%></p>
							<form id="memberlogin-form"   action="MemberLogin" method="post">
								<fieldset>
								     <div class="identityField">
									    <label for="identity">卡类型:</label>
                                        <input type="radio" name="loginIdentity" value="simple"><font face="微软雅黑">个人</font>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="radio" name="loginIdentity" value="family"><font face="微软雅黑">家庭</font>
                                     </div>
								     <div class="field"><label for="loginId">卡号:</label><input type="text" id="loginId" name="loginId" value=""/></div>
									 <div class="field"><label for="loginPassword">密码:</label><input type="text" id="loginPassword" name="loginPassword" value=""/></div>
									 <div class="field"><label></label></div>
									 <div class="field"><label></label></div>
									   
									 <div class="alignleft">
										<a  href="#"  onclick="document.getElementById('memberlogin-form').submit()"><strong>登录</strong></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									    <a  href="../member/Register.jsp" ><strong>注册</strong></a>
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
			<%
				}else{
			%>
 		    <div class="box alt">
				<div class="left-top-corner">
					<div class="right-top-corner">
						<div class="border-top"></div>
					</div>
				</div>
				<div class="border-left">
					<div class="border-right">
						<div class="inner">
						    
    						<h3>欢迎您！</h3>
    						<%
    							String cardTypeString =((FamilyCard)card).getType();
    						    						    						   if(cardTypeString.equals("simple")){
    						    						    							   cardTypeString="个人卡";
    						    						    						   }else {
    						    						    							   cardTypeString="家庭卡";
    						    						    						   }
    						%>
    						<p><%=cardTypeString%>用户: <%=((FamilyCard)card).getId()%></p>
   							<br>							
						</div>
					</div>
				</div>
				<div class="left-bot-corner">
					<div class="right-bot-corner">
						<div class="border-bot"></div>
					</div>
				</div>
			</div>
 		    <% 
 		        }
			%>
<!-- box end -->

<!-- box begin -->
			<div class="box">
				<div class="left-top-corner">
					<div class="right-top-corner">
						<div class="border-top"></div>
					</div>
				</div>
				<div class="border-left">
					<div class="border-right">
						<div class="inner">
							<h3>Clarification</h3>
							<ol>
								<li><a href="">Java</a></li>
								<li><a href="">C++</a></li>
								<li><a href="">Html</a></li>
								<li><a href="">C</a></li>
								<li><a href="">CSS</a></li>
								<li><a href="">JavaScript</a></li>
								<li><a href="">SQL</a></li>
								<li><a href="">PHP</a></li>
							</ol>
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
    
	<div class="leftBiggerLeftContainer">
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
							<div class="wrapper">
								<dl class="special fright">
									<dt>Hot Issue</dt>
									<dd><img alt="" src="../images/cloudComputing.jpg" /><span>cloud</span></dd>
									<dd><img alt="" src="../images/J2ME.jpg" /><span>J2ME</span></dd>
								</dl>
								
								<h2>JRE in Kubuntu doesn't allow me to run .jar file</h2>
								<blockquote>Since the problem in Windows was on the JRE and not on my application, I think the same is happening in Kubuntu. An important note is that I've installed NetBeans on Kubuntu too and when I debug or run the application under Netbeans, it works fine, but when I compile it and try to run it with:<br>
                                            <em>java -jar "MBoxTest.jar"</em><br>
                                            I get the same errors I got on Windows including the final one that says it cannot find the main class:<br>
                                            <em>Exception in thread "main" java.lang.UnsupportedClassVersionError</em><br>
                                            <em>Files\Sybase\Shared\win32;C:\Program Files\Sybase\SQL Anywhere 9\drivers;<br>
                                            C:\Program Files\Sybase\Shared\Sybase Central 4.3\win32;<br>
                                            C:\Program Files\Sybase\Shared\PowerBuilder;<br>
                                            C:\Program Files\Sybase\Shared\Web Targets;<br>
                                            C:\Program Files\Sybase\Shared\DataDirect;<br>
                                            C:\Program Files\Microsoft SQL Server\80\Tools\BINN;<br>
                                            C:\Program Files\Common Files\TTKN\Bin;<br></em>
                                            
								</blockquote>
								
                                
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

<!-- box begin -->
			<div class="box">
				<div class="left-top-corner">
					<div class="right-top-corner">
						<div class="border-top"></div>
					</div>
				</div>
				<div class="border-left">
					<div class="border-right">
						<div class="inner">
							<h3>What everyone are interested in</h3>
							<ol>
								<li> Inline content inside div, without breaking a line </li>
								<li> Add tab functionality in editable div </li>
								<li> Androiddriver Python Bindings httplib </li>
								<li> Quickest way to restructure an array? </li>
								<li> css classes not toggling properly based on the click event </li>
								<li> How to avoid broken references in a Visual Studio database project? </li>
								<li> Best method to create large graph that can be panned and scaled with HTML 5</li>
							</ol>
							
							<p> <br> <a href="question.php">more details</a> </p>
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