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
<link rel="stylesheet" href="info.css"  type="text/css"/>
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
		<li><a href="#"><span>学生服务</span></a></li>
		<li id="current"><a href="#"><span>公司服务</span></a></li>
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

  <p><strong>欢迎您,思科公司 </strong></p>
  <p>       
    <input type="submit" name="Submit" value="注销登陆" />
  </p>
  <div> 
		<ul id="cmenu"> 
		<li><a href="home.htm">更改公司信息</a></li> 
		<li><a href="about.htm">添加职位</a></li> 
		<li><a href="products.htm">编辑职位</a></li> 
		<li><a href="services.htm">申请场地</a></li> 
		<li><a href="contact.htm">学生列表</a></li> 
		<li><a href="contact.htm">邮箱</a></li>
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
   
	  
	  
	<div id="list">
	             <div id="apply_job">
			    <h3>申请场地</h3>
			
				<p class="date"><label>地点:</label>
				  <select name="select2">
				    <option>请选择----------------------</option>
				    <option>D楼100</option>
				    <option>光彪楼多功能厅</option>
				    <option>软件学院演讲厅</option>
				    <option>闵行校区图书馆主馆</option>
			      </select>
				</p>
				<p class="date"><label>日期:</label>
				  <input type="text"  width="30" name="textfield2" />年
				  <input type="text"  width="25" name="textfield2" />月
				  <input type="text"  width="25" name="textfield2" />日
				</p>
				<p class="date"><label>开始时间:</label>
				  <input type="text"  width="25" name="textfield2" />时
				  <input type="text"  width="25" name="textfield2" />分
			    </p>
				<p class="date"><label>结束时间:</label>
				  <input type="text"  width="25" name="textfield2" />时
				  <input type="text"  width="25" name="textfield2" />分
			    </p>
				<p id="textarea" class="date"><label>其他要求:</label>
				  <label>
				  <textarea name="textarea" rows="10">请输入</textarea>
				  </label>
				</p>
				<p class="date"> 
				  <input type="submit" name="Submit2" value="提交申请" />
				</p>
				
			 </div>
		    	 <div id="filed_applied">
		        <h3>已经提交的申请</h3>
				 <applied_list>暂且未提交任何申请</applied_list>
			    </div>
				 <div id="field_replied">
		        <h3>已经确认的申请</h3>
				 <replied_list>暂且未提交任何申请</replied_list>
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
