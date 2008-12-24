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
<script language="JavaScript">
<!-- Begin
//set todays date
 var xmlHttp;
 function addLoadEvent(func) 
{
  var oldonload = window.onload;
  if (typeof window.onload != 'function') 
  {
    window.onload = func;
  } 
  else 
  {
    window.onload = function() 
    {
      if (oldonload) 
     {
        oldonload();
      }
      func();
    }
  }
}

addLoadEvent(function() {
  /* more code to run on page load */ 
  loadJob();
}
);
       function createXmlHttp(){
		   if(window.XMLHttpRequest){
		     xmlHttp=new XMLHttpRequest();
		     
		   }else {xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		   }
		}
   function loadJob(){
          createXmlHttp();
		  xmlHttp.onreadystatechange=showJob;
		  xmlHttp.open("GET","getcompanyjob.do?ts="+new Date().getTime(),true);
		  xmlHttp.send(null);
   }
   function showJob(){
     if(xmlHttp.readyState==4){
		  if(xmlHttp.status==200){
		  var jobs=xmlHttp.responseXML.getElementsByTagName("job");
		   var selector=  document.getElementById("job");
        
		   for(var i=0;i<jobs.length;i++){
		    option = document.createElement("option");
		      var idnode=jobs[i].childNodes[0];
		      var namenode=jobs[i].childNodes[1];
		      option.setAttribute("value",idnode.firstChild.nodeValue);
		   option.appendChild(document.createTextNode(namenode.firstChild.nodeValue)); 
		   selector.appendChild(option);
		   }
		  }else{
		    alert("Error");
		  }
		}
      }
      function loadStudent(){
         var jobid = document.getElementById("job").value;
		  if(jobid=="") return;
		   createXmlHttp();		  
		  xmlHttp.onreadystatechange=showStudent;
		  xmlHttp.open("GET","getapplyer.do?jobid="+jobid+"&ts="+new Date().getTime(),true);
		  xmlHttp.send(null);
      }
      function showStudent(){
         if(xmlHttp.readyState==4){
		  if(xmlHttp.status==200){
		  document.getElementById("sturesult").innerHTML=xmlHttp.responseText;
		   
		  }else{
		    alert("Error");
		  }
		}
      }
//  End -->
</script>
<link rel="stylesheet" href="index.css" type="text/css" />
<link rel="stylesheet" href="menu.css" type="text/css" />
<link rel="stylesheet" href="login.css" type="text/css" />
<link rel="stylesheet" href="ad.css"  type="text/css"/>
<link rel="stylesheet" href="info.css"  type="text/css"/>
<link rel="stylesheet" href="field.css"  type="text/css"/>
<link rel="stylesheet" href="jobresult.css"  type="text/css"/>
<link rel="stylesheet" href="leftnav.css"  type="text/css"/>
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
    <div id="leftnav"> 
		<div class="undo"><a href="#">职位管理</a></div>
		<div class="undo"><a href="#">场地管理</a></div>
		<div class="do">察看学生列表</div>
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
	   <div id="check_job">
			    <h3>察看公司已有职位</h3>
               	<p class="date"><label class="three">选择公司职位:</label>
				  <select id="job" name="select" onchange="loadStudent();">
				    <option value=0>请选择--------------------------------------------------</option>
			      </select>
				</p>
	   </div>
	   <div id="sturesult">
			    <h3>已申请该职位的学生列表</h3>
               	 
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
