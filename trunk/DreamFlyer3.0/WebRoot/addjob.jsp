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
		<li><a href="contact.htm">场地记录</a></li> 
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
	             <div id="jobadd">
			    <h3><span>增加职位</span></h3>
				<p class="date">选择行业:
				  <select name="select">
				    <option>请选择----------------------</option>
				    <option>计算机软件</option>
				    <option>计算机硬件</option>
				    <option>媒体/出版/图书</option>
				    <option>教育/培训</option>
				    <option>机械/器材/重工业</option>
				    <option>化工</option>
				    <option>能源/开采/冶炼</option>
			      </select>
				</p>
				<p class="date">选择职能:
				  <select name="select2">
				    <option>请选择----------------------</option>
				    <option>软件工程师</option>
				    <option>测试师</option>
				    <option>系统分析师</option>
				    <option>系统架构师</option>
				    <option>项目经理</option>
				    <option>技术顾问</option>
				    <option>总经理</option>
				    <option>首席技术总监</option>
			      </select>
				</p>
				<p class="date">所需学历:
				  <input type="text" name="textfield2" />
				</p>
				<p class="date">所需经验:
				  <input type="text" name="textfield3" />
				年</p>
				<p class="date">所需性别:
				  <label>男
				  <input name="radiobutton" type="radio" value="radiobutton" />
				  </label>
				  <label>女
				  <input name="radiobutton" type="radio" value="radiobutton" />
				  </label>
				</p>
				<p class="date">其他要求:
				  <label>
				  <textarea name="textarea">请输入</textarea>
				  </label>
				</p>
				<p class="date">职位描述:
				  <label>
				  <textarea name="textarea2">请输入</textarea>
				  </label>
				</p>
				<p class="date"> 
				  <input type="submit" name="Submit2" value="确认添加" />
				</p>
				
			 </div>
		    	 <div id="job_added">
		        <h3><span>已添加的职位</span></h3>
				 <added_list>无</added_list>
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
