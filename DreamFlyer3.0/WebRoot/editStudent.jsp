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

  <p><strong>欢迎您,Robert同学 </strong></p>
  <p>       
    <input type="submit" name="Submit" value="注销登陆" />
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
	            <div id="editSinfo">
			    <h3>更改个人信息</h3>
				<p class="date"><label>姓名:</label>
				  <input type="text"  value="朱元璋"width="85" name="textfield2" />
				</p>
				<p class="date"><label>原始密码:</label>
				  <input type="text"  value="1234"width="85" name="textfield2" />
				</p>
				<p class="date"><label>新密码:</label>
				  <input type="text"  value="1111"width="85" name="textfield2" />
				</p>
              	<p class="date"><label>专业:</label>
				  <input type="text"  value="软件工程"width="85" name="textfield2" />
				</p>
				<p class="date"><label>地址:</label>
				  <input type="text"  value="东川路800号"width="250" name="textfield2" />
				</p>
				<p class="date"><label>性别:</label>
				  男
				  <input name="radiobutton"  type="radio" value="radiobutton" />
				  女
				  <input name="radiobutton" type="radio" value="radiobutton" />
				  
				</p>
				<p class="date"><label>年龄:</label>
				  <input type="text"  width="85" name="textfield2" />
				</p>
				<p class="date"><label>email:</label>
				  <input type="text"  width="85" name="textfield2" />
				</p>
				<p class="date"><label>学历:</label>
				  <input type="text"  width="85" name="textfield2" />
				</p>
				<p class="date"><label>学院:</label>
				  <input type="text"  width="85" name="textfield2" />
				</p>
				<p class="date"><label>电话:</label>
				  <input type="text"  width="85" name="textfield2" />
				</p>
				<p class="date"><label>头像:</label>
				  <input type="text"  width="159" name="textfield2" />
				  <input type="submit" name="Submit22" value="浏览" />
				</p>
				<p id="textarea" class="date"><label>个人描述:</label>
				  <label>
				  <textarea name="textarea" rows="10">无</textarea>
				  </label>
				</p>
				<p class="date"> 
				  <input type="submit" name="Submit2" value="确认修改" />
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
