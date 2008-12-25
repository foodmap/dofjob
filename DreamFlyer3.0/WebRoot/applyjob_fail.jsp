<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
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
<script type="text/javascript">
function logout(){
       alert("欢迎您的再次光临");
       window.location='logout.do?&ts='+new Date().getTime(); 
      }
  </script>
<link rel="stylesheet" href="index.css" type="text/css" />
<link rel="stylesheet" href="menu.css" type="text/css" />
<link rel="stylesheet" href="login.css" type="text/css" />
<link rel="stylesheet" href="jobresult.css" type="text/css" />
<link rel="stylesheet" href="jobsearch.css" type="text/css" />
<link rel="stylesheet" href="info.css" type="text/css" />
<link rel="stylesheet" href="field.css" type="text/css" />
<link rel="stylesheet" href="leftnav.css" type="text/css" />
</head>
<!-- The structure of this file is exactly the same as 2col_rightNav.html;
     the only difference between the two is the stylesheet they use -->
	 
	 
	 
<body>
<div id="container">
<div id="masthead">
  <div id="logo" ><img src="img/logo.png"/></div>
  <div id="leftbar"><img src="img/leftbar.gif"/></div>
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
<p><strong>欢迎您, <bean:write name="current_user" property="name" scope="session"/>同学 </strong></p>
<table width="195" height="204" border="0">
  <tr>
    <td width="23" height="198">&nbsp;</td>
    <td width="128"><img src="photo/<bean:write name="current_user" property="photo" scope="session"/>.jpg" width="128" height="200" /></td>
    <td width="22">&nbsp;</td>
  </tr>
</table>
<p>&nbsp;</p>
  <p>       
    <input type="submit" name="Submit" value="注销登陆" onclick="logout();"/>
  </p>
  <div  id="leftnav"> 
		<div class="do">找工作</div>
		<div class="undo"><html:link action="getmyapplyment.do">工作收藏夹</html:link></div>
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
	            <div id="applyjob_fail">
			    <h3><span>找工作</span></h3>
				  <p class="date">
                 <html:link page="/searchjob.jsp">
				       <img class="fieldimg" src="img/fail.jpg"/>申请失败，点击返回找工作页面 
	             </html:link>
                </p>
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
