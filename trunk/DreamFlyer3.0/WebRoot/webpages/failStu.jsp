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
<meta http-equiv="refresh" content="2";url=register.jsp">

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
  <p><strong>欢迎进入</strong></p>
  <p><strong>DreamFlyer系统注册页面 </strong></p>
  <p>&nbsp;</p>
   </fieldset>
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
   <div id="jobsearch">
	            <div id="registerSinfo">
			    <h3>学生注册</h3>
				对不起，您的注册失败了！
    	    </div>
			 <div id="editCinfo">
			    <h3>公司注册</h3>
				<p class="date">
				   <label>名称:</label>
				   <input type="text" width="85" name="textfield2" />
				</p>
				<p class="date">
				<label>原始密码:</label>
				  <input type="text" width="85" name="textfield2" />
				</p>
				<p class="date">
				  <label>新密码:</label>
				  <input type="text" width="85" name="textfield2" />
				</p>
              	<p class="date">
				<label>省份:</label>
				  <input type="text" width="85" name="textfield2" />
				</p>
				<p class="date"><label>城市:</label>
				  <input type="text"  width="85" name="textfield2" />
				</p>
				<p class="date"><label>具体地址:</label>
				  <input type="text" width="185" name="textfield22" />
</p>
				<p class="date"><label>电话:</label>
				  <input type="text" width="185" name="textfield2" />
				</p>
				<p class="date"><label>email:</label>
				  <input type="text" width="185" name="textfield2" />
				</p>
				<p class="date"><label>主页:</label>
				  <input type="text" width="185" name="textfield2" />
				</p>
			   <p class="date"><label>传真:</label>
				 <input type="text"  value=""width="185" name="textfield23" />
			   </p>
				<p id="textarea" class="date"><label>公司描述:</label>
				  <label>
				  <textarea name="textarea" rows="10">无</textarea>
				  </label>
				</p>
				<p class="date"> 
				  <input type="submit" name="Submit2" value="确认提交" />
				</p>
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
