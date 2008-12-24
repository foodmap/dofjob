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
<link rel="stylesheet" href="jobresult.css" type="text/css" />
<link rel="stylesheet" href="jobsearch.css" type="text/css" />
<link rel="stylesheet" href="info.css" type="text/css" />
</head>
<!-- The structure of this file is exactly the same as 2col_rightNav.html;
     the only difference between the two is the stylesheet they use -->
	 
	 
	 
<body>
<div id="container">
<div id="masthead">
  <div id="logo" ><img src="img/logo.png"></div>
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
 <fieldset>
  <p><strong>&nbsp;&nbsp; 您好，<em><bean:write name="current_user" property="name" scope="session"/></em>&nbsp;&nbsp; 同学</strong></p>
  
  <p><strong>&nbsp;&nbsp; 欢迎进入DreamFlyer</strong></p>
  <p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 系统注册页面</strong><br />&nbsp;</p>
   </fieldset>
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
      <li><a href="#">美国公司曝光"地狱求职信"</a></li>
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
   <div id="jobsearch">
	            <div id="registerSinfo">
			    <h3>学生注册</h3>
		<html:form action="studentRegister" enctype = "multipart/form-data">					
				<p class="date"><label>密码:</label>
				  <html:password property="password" />
				</p>
				<p class="date"><label>确认密码:</label>
				  <html:password property="confirmpassword" />
				</p>
			   	<p class="date"><label>地址:</label>
				  <html:text property="address" />
				</p>
				<p class="date"><label>email:</label>
				  <html:text property="email" />
				</p>
				<p class="date"><label>电话:</label>
				  <html:text property="telephone" />
				</p>
				<p class="date"><label>头像:</label>
				 <html:file property="photo"></html:file>
				</p>
				<p id="textarea" class="date"><label>个人描述:</label>
				  <label>
				  <html:textarea property="description"/>
				  </label>
				</p>
				<p class="date"> 
				  <input type="submit" name="Submit2" value="确认提交" />
				</p>
			</html:form>
    	    </div>
	  </div>
 </div>


 <div id="right">
   <div id="datebar">
     <form>
       <h3>2008年12月25号</h3>
       <h4>(晴天)</h4>
     </form>
   </div>
   <div id="rightlinks">
  <div class="relatedLinks">
    <h3>项目推荐</h3>
    <ul>
      <li><a href="#">基于网络设备远程检测与故障诊断系统</a></li>
      <li><a href="#">快速成型制造系统</a></li>
      <li><a href="#">从马克思主义看我党思想路线</a></li>
      <li><a href="#">微小肺原通道内沸腾特性强化</a></li>
      <li><a href="#">太阳能空调喷射制冷机</a></li>
      <li><a href="#">面向环境感知的中间件支持服务平台</a></li>
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
