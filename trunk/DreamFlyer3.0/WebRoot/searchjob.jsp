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
		<li><a href="#"><span>主页</span></a></li>
		<li><a href="#"><span>找工作</span></a></li>
		<li><a href="#"><span>公告新闻</span></a></li>
		<li><a href="#"><span>就业指导</span></a></li>
		<li id="current"><a href="#"><span>学生服务</span></a></li>
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

  <p><strong>欢迎您, <bean:write name="current_user" property="username" scope="session"/> 同学 </strong></p>
  <p>
  <a href="logout.do">[注销]</a>      
  </p>
  <div> 
		<ul id="cmenu"> 
		<li><a href="home.htm">更改个人信息</a></li> 
		<li><a href="about.htm">找工作</a></li> 
		<li><a href="products.htm">工作收藏夹</a></li> 
		<li><a href="contact.htm">文章检索</a></li> 
		<li><a href="contact.htm">我的邮箱</a></li>
		</ul> 
</div> 

  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
   </fieldset>
  </div>
</div>


 <div id="middle">
   <div id="jobsearch">
	            <div id="jobselect">
			    <h3><span>找工作</span></h3>
				<p class="date"><label>选择行业:</label>
				  <select name="select">
				    <option>请选择----------------------</option>
				    <option>IT</option>
				    <option>化工</option>
			      </select>
				</p>
              	<p class="date"><label>选择职能:</label>
				  <select name="select">
				    <option>请选择----------------------</option>
				    <option>项目经理</option>
				    <option>会计师</option>
			      </select>
				</p>
				<p class="date"><label>选择学历:</label>
				  <select name="select">
				    <option>请选择----------------------</option>
				    <option>硕士</option>
				    <option>博士</option>
			      </select>
				</p>
				<p class="date"><label>工作年限:</label>
				  <select name="select">
				    <option>请选择----------------------</option>
				    <option>1</option>
				    <option>2</option>
			      </select>
				</p>
				<p class="date"><label>工作地点:</label>
				  <select name="select">
				    <option>请选择----------------------</option>
				    <option>上海</option>
				    <option>北京</option>
			      </select>
				</p>
                  
				
			    </div>
   	    <div id="jobresult">
		        <h3><span>搜索结果</span></h3>
		     <ui>   
         	<li class="jobdescript"> 职位描述 </li>
			<li class="jobdetail"> 行业: 计算机 职能: 软件工程师 思科 上海 学历要求: 大四 经验要求: 0年 性别要求: null 发布日期: 30 Dec 2008 16:00:00 GMT 其他要求: null</li>

			<li class="jobdescript"> 职位描述 </li>
			<li class="jobdetail"> 行业: 计算机 职能: 软件工程师 思科 上海 学历要求: 大四 经验要求: 0年 性别要求: null 发布日期: 30 Dec 2008 16:00:00 GMT 其他要求: null</li>
			<li class="jobdescript"> 职位描述 </li>
			<li class="jobdetail"> 行业: 计算机 职能: 软件工程师 思科 上海 学历要求: 大四 经验要求: 0年 性别要求: null 发布日期: 30 Dec 2008 16:00:00 GMT 其他要求: null</li>
			<li class="jobdescript"> 职位描述 </li>
			<li class="jobdetail"> 行业: 计算机 职能: 软件工程师 思科 上海 学历要求: 大四 经验要求: 0年 性别要求: null 发布日期: 30 Dec 2008 16:00:00 GMT 其他要求: null</li>
			<li class="jobdescript"> 职位描述 </li>
			<li class="jobdetail"> 行业: 计算机 职能: 软件工程师 思科 上海 学历要求: 大四 经验要求: 0年 性别要求: null 发布日期: 30 Dec 2008 16:00:00 GMT 其他要求: null</li>
			<li class="jobdescript"> 职位描述 </li>
			<li class="jobdetail"> 行业: 计算机 职能: 软件工程师 思科 上海 学历要求: 大四 经验要求: 0年 性别要求: null 发布日期: 30 Dec 2008 16:00:00 GMT 其他要求: null</li>
			<li class="jobdescript"> 职位描述 </li>
			<li class="jobdetail"> 行业: 计算机 职能: 软件工程师 思科 上海 学历要求: 大四 经验要求: 0年 性别要求: null 发布日期: 30 Dec 2008 16:00:00 GMT 其他要求: null</li>
		  </ui>
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
