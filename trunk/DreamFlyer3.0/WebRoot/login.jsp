<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

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
   <html:password property="password" size="14"/>
<br />
  </div>
  <div id="choser">
   学生
   <html:radio property="usertype" value="student" />
   公司
   <html:radio property="usertype" value="company"/>
  </div>
  <div>
   <label for="vali">验证码</label>
   <html:text property="verifycode" size="6" />
  <image src="testCheck.jsp">
   <br />
   </div>
  <div class="cookiechk">
   <label>
     <input type="checkbox" name="CookieYN" id="CookieYN" value="1" /> 
	 <a href="#" title="选择是否记录您的信息">记住我</a></label>
     <input name="lbtn" type="submit" class="button" value="登录" />
     <a href="registryCheck.jsp">[注册]</a>
  </div> 
  <div class="forgotpass"><a href="#">您忘记密码?</a></div> 
 </fieldset>
 </html:form>
</div>
  
<div id="leftlinks">
  <div class="relatedLinks">
    <h3>就业指南</h3>
    <ul>
      <li><a href="#">失职违纪属于赔偿问题</a></li>
      <li><a href="#">08年应届本科生最高薪的十大职位</a></li>
      <li><a href="#">你的求职简历是"大话王"吗?</a></li>
      <li><a href="#">绕过简历十大致命威胁</a></li>
      <li><a href="#">职场"牛"人如何让简历也"牛"？</a></li>
      <li><a href="#">美国一公司曝光"地狱求职信"</a></li>
    </ul>
  </div>
  <div class="relatedLinks">
    <h3>校园新闻</h3>
    <ul>
      <li><a href="#">浦发银行青岛分行诚邀高校2009年应届毕业生加盟</a></li>
      <li><a href="#">Oracle校园ERP项目启动</a></li>
      <li><a href="#">上海交通大学附属中学“欢歌笑语任畅想”迎新文艺演出通告</a></li>
      <li><a href="#">农生医药四院迎新晚会</a></li>
      <li><a href="#">张杰校长带团访问美国名校</a></li>
      <li><a href="#">大学教学楼使用指南</a></li>
    </ul>
  </div>
 <div class="relatedLinks">
    <h3>各类讲座</h3>
    <ul>
      <li><a href="#">甘阳：当代中国的思想解放</a></li>
      <li><a href="#">中国传统学术研究方法在近现代的演变</a></li>
      <li><a href="#">数学猜想与数学发展</a></li>
      <li><a href="#">理论物理与天体物理研究所系列讲座之四十三</a></li>
      <li><a href="#">立志讲堂365期</a></li>
      <li><a href="#">软件人才生涯规划方案</a></li>
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
				<p class="date">2008.12.7</p>
				<ul>
					<li><a href="#">Oracle公司于今晚7点在软件学院大楼召开宣讲会</a></li>
					<li><a href="#">IBM公司将于近期进行校园招聘</a></li>
					<li><a href="#">利和集团(香港利丰集团下属企业)2009管理培训生招聘会</a></li>
					<li><a href="#">2009年淘宝网校园招聘会笔试通知</a></li>
				</ul>
				<p class="date">2008.12.24</p>
				<ul>
					<li><a href="#">澳门大学2009招生暨奖学金说明会</a></li>
					<li><a href="#">上海电科智能系统股份有限公司2009年招聘会</a></li>
					<li><a href="#">上海万学教育信息咨询有限公司2009校园宣讲会</a></li>
					<li><a href="#">中国人寿上海数据中心2009招聘会</a></li>
				</ul>
				<p class="more"><a href="#">more</a></p>
			  </div>
		      <div id="download_list">
			    <h3><span>资源下载</span></h3>
				<p class="date">2008.12.7</p>
				<ul>
					<li><a href="#">广西职业技术学院2009年度招聘计划</a></li>
					<li><a href="#">上海交通大学非上海生源应届毕业生进沪就业办理户籍送审材料审核表(白表)</a></li>
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
      <li><a href="#">08年GRE内地考生增3成</a></li>
      <li><a href="#">明年商务英语证书考试日期排定</a></li>
      <li><a href="#">[劳动法|劳动合同]试用期结束不转正怎么办？</a></li>
      <li><a href="#">新法新政推动九成以上企业改革</a></li>
      <li><a href="#">岗位撤销合同期未到怎么补偿？</a></li>
      <li><a href="#">身不由己的“职场八卦”</a></li>
    </ul>
  </div>
 <div class="relatedLinks">
    <h3>友情链接</h3>
    <ul>
      <li><a href="#">上海交通大学招就办</a></li>
      <li><a href="#">前程无忧</a></li>
      <li><a href="#">中华英才网</a></li>
      <li><a href="#">智联招聘</a></li>
      <li><a href="#">58同城网</a></li>
      <li><a href="#">上海招聘网</a></li>
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
