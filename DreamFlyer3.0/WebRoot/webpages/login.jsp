<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@   taglib   prefix= "html "   uri= "http://struts.apache.org/tags-html "   %> 
<%@   taglib   prefix= "bean "   uri= "http://struts.apache.org/tags-bean "   %> 
<%@   taglib   prefix= "logic "   uri= "http://struts.apache.org/tags-logic "%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>SJTU JOB HUNTING HOMEPAGE</title>
<link rel="stylesheet" href="index.css" type="text/css" />
<link rel="stylesheet" href="menu.css" type="text/css" />
<link rel="stylesheet" href="login.css" type="text/css" />
<link rel="stylesheet" href="ad.css"  type="text/css"/>

<script src="ad.js" type="text/javascript"></script>
</head>
<!-- The structure of this file is exactly the same as 2col_rightNav.html;
     the only difference between the two is the stylesheet they use -->
	 
	 
	 
<body>
<div id="container">
<div id="masthead">
  <div id="logo" ><img src="img/logo.png" /></div>
  <div id="leftbar"><img src="img/leftbar.gif"></div>
  <div id="rightbar">
   <img src="img/go.gif"/>
    <input name="textfield" type="text"/>
     <img src="img/search.gif"/>
  </div>
  <div id="navBar">
    <ul>
		<li id="current"><a href="#"><span>主页</span></a></li>
		<li><a href="#"><span>找工作</span></a></li>
		<li><a href="#"><span>公告新闻</span></a></li>
		<li><a href="#"><span>就业指导</span></a></li>
		<li><a href="#"><span>学生服务</span></a></li>
		<li><a href="#"><span>公司服务</span></a></li>
		<li><a href="#"><span>资源下载</span></a></li>
		<li><a href="#"><span>关于我们</span></a></li>
    </ul>
   </div>

</div>
<!-- end masthead -->
<div id="content">
 <div id="left">
  <div id="login">
 <html:form action="login">
 <fieldset>
  <legend>用户登录</legend>
  <div id="username">
   <label for="Name">用户名</label>
   <html:text property="username" size="14"/>
   <br/>
  </div>
  <div>
   <label for="password">密码</label>
   <html:password property="passwd" size="14"/>
<br />
  </div>
  <div id="choser">
   学生
   <input name="radiobutton"  type="radio" value="radiobutton" />
   公司
   <input name="radiobutton" type="radio" value="radiobutton" />
  </div>
  <div>
   <label for="vali">验证码</label>
   <input type="text" name="vali" id="vali" size="6" maxlength="6" />
  <image src="testCheck.jsp">
   <br />
   </div>
  <div class="cookiechk">
   <label>
     <input type="checkbox" name="CookieYN" id="CookieYN" value="1" /> 
	 <a href="#" title="选择是否记录您的信息">记住我</a></label>
     <input name="lbtn" type="submit" class="button" value="登录" />
     <input name="rbtn" type="submit" class="button" value="注册" />
  </div> 
  <div class="forgotpass"><a href="#">您忘记密码?</a></div> 
 </fieldset>
 </html:form>
</div>
  
<div id="leftlinks">
  <div class="relatedLinks">
    <h3>就业指南</h3>
    <ul>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
    </ul>
  </div>
  <div class="relatedLinks">
    <h3>校园新闻</h3>
    <ul>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
    </ul>
  </div>
 <div class="relatedLinks">
    <h3>各类讲座</h3>
    <ul>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
    </ul>
  </div>
 </div> 

</div>


 <div id="middle">
     <div id="ads">
       <h2 id="pageName">Quick Review for Ads </h2>
       <div class="pb" jpe="pb:promotion-banner">
		<ul class="banners" id="promotion_banners">
    <li id="banners_1_body_1" class="current"><a href="http://www.ahaosky.com" target="_blank"><img src="ad/1.jpg" /></a></li>
	<li id="banners_2_body_1"><a href="http://www.ahaosky.com" target="_blank"><img src="ad/2.jpg" /></a></li>
	<li id="banners_3_body_1"><a href="http://www.ahaosky.com" target="_blank"><img src="ad/3.jpg" /></a></li>
	<li id="banners_4_body_1"><a href="http://www.ahaosky.com" target="_blank"><img src="ad/1.jpg" /></a></li>
	<li id="banners_5_body_1"><a href="http://www.ahaosky.com" target="_blank"><img src="ad/2.jpg" /></a></li>
	<li id="banners_6_body_1"><a href="http://www.ahaosky.com" target="_blank"><img src="ad/3.jpg" /></a></li>
		</ul>

		<div class="switcher">
			<ul class="points" id="banners">
			  <li class="current" id="banners_1">1</li>
	  		  <li id="banners_2">2</li>
	 		  <li id="banners_3">3</li>
	 		  <li id="banners_4">4</li>
	  		  <li id="banners_5">5</li>
	 		  <li id="banners_6">6</li>
	       </ul>
		   <div class="steps" id="banners_sts">
	 		 <div class="up"></div>
	 		 <div class="down"></div>
   	       </div>
       </div>
      </div>
     </div>
	  
	  
	<div id="list">
	             <div id="bulletin_list">
			    <h3><span>最新公告</span></h3>
				<p class="date">2008.10.1</p>
				<ul>
					<li><a href="#">公司例会确定了新的项目筹备组</a></li>
					<li><a href="#">i、g、t三人当选公司新任董事会骨干</a></li>
					<li><a href="#">对股票的运作做了详细的规划</a></li>
					<li><a href="#">lh担任办公室重要职务，茁壮成长</a></li>
				</ul>
				<p class="date">2008.10.1</p>
				<ul>
					<li><a href="#">公司例会确定了新的项目筹备组</a></li>
					<li><a href="#">i、g、t三人当选公司新任董事会骨干</a></li>
					<li><a href="#">对股票的运作做了详细的规划</a></li>
					<li><a href="#">lh担任办公室重要职务，茁壮成长</a></li>
				</ul>
				<p class="more"><a href="#">more</a></p>
			 </div>
		    	 <div id="job_list">
		        <h3><span>校园招聘</span></h3>
				<p class="date">2006.12.7</p>
				<ul>
					<li><a href="#">Oracle公司于今晚7点在软件学院大楼召开宣讲会</a></li>
					<li><a href="#">IBM公司将于近期进行校园招聘</a></li>
				</ul>
				<p class="date">2008.09.24</p>
				<ul>
					<li><a href="#">公司成立25周年纪念，领导发表重要讲话</a></li>
					<li><a href="#">新一轮项目筹备工作开始启动</a></li>
				</ul>
				<p class="more"><a href="#">more</a></p>
			  </div>
		      <div id="download_list">
			    <h3><span>资源下载</span></h3>
				<p class="date">2006.12.7</p>
				<ul>
					<li><a href="#">时时语音和图象处理功能的纸箱</a></li>
					<li><a href="#">自动收发装置更新，电力充足</a></li>
				</ul>
				<p class="more"><a href="#">more</a></p>
			  </div>
    </div>
</div>


 <div id="right">
   <div id="datebar">
     <form>
       <h3>今天是2009年1月12号</h3>
     </form>
   </div>
   <div id="rightlinks">
  <div class="relatedLinks">
    <h3>项目推荐</h3>
    <ul>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
    </ul>
  </div>
  <div class="relatedLinks">
    <h3>热门文章</h3>
    <ul>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
    </ul>
  </div>
 <div class="relatedLinks">
    <h3>友情链接</h3>
    <ul>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
    </ul>
  </div>
 </div> 
</div>
</div>
<div id="siteInfo"> 
    <a href="#">网站导航</a> 
	<a href="#">关于我们</a> 
	<a href="#">隐私保护</a> 
	<a href="#">条款声明</a>
	<a href="#">置顶</a> 
	&copy;2008  Dof, All rights reserved</div>
</div>
</body>
</html>
