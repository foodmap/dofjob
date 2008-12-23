<%@ page contentType="text/html; charset=gbk" language="java" import="java.sql.*" errorPage="" %>
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
 var xmlHttp;
 var provinces=new Array();
 provinces[0]=['杭州'];
 provinces[1]=['广州','湛江']; 
 provinces[2]=['哈尔滨','大庆'];
  provinces[3]=['上海'];
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
  loadIndustry();
}
);

		function createXmlHttp(){
		   if(window.XMLHttpRequest){
		     xmlHttp=new XMLHttpRequest();
		     
		   }else {xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		   }
		}
		function loadIndustry(){
		  createXmlHttp();
		  xmlHttp.onreadystatechange=showIndustry;
		  xmlHttp.open("GET","getindustry.do?ts="+new Date().getTime(),true);
		  xmlHttp.send(null);
		
		}
		function showIndustry(){
		  if(xmlHttp.readyState==4){
		  if(xmlHttp.status==200){
		  var industries=xmlHttp.responseXML.getElementsByTagName("industry");
		   var selector=  document.getElementById("industry");
        
		   for(var i=0;i<industries.length;i++){
		    option = document.createElement("option");
		      var idnode=industries[i].childNodes[0];
		      var namenode=industries[i].childNodes[1];
		      option.setAttribute("value",idnode.firstChild.nodeValue);
		   option.appendChild(document.createTextNode(namenode.firstChild.nodeValue)); 
		   selector.appendChild(option);
		   }
		  }else{
		    alert("Error");
		  }
		}
		}
		
		function loadFunction(){
		  var industryid = document.getElementById("industry").value;
		  if(industryid=="") return;
		   createXmlHttp();		  
		  xmlHttp.onreadystatechange=showFunction;
		  xmlHttp.open("GET","getfunctions.do?industryid="+industryid+"&ts="+new Date().getTime(),true);
		  xmlHttp.send(null);
		}
	   
	  function showFunction(){
		  if(xmlHttp.readyState==4){
		  if(xmlHttp.status==200){
		 
		   var selector=  document.getElementById("function");
		   /*清除下拉框*/
           selector.innerHTML='';
           /*加入加拉框首行*/
           var tip=document.createElement("option");
           tip.setAttribute("value","0");
           tip.appendChild(document.createTextNode("请选择-------------------------"));
		   selector.appendChild(tip);
		   
		    var functions=xmlHttp.responseXML.getElementsByTagName("function");
		  /*加入所有与行业对应的职能*/
		 
		   for(var i=0;i<functions.length;i++){
		   
		    option = document.createElement("option");
		      var idnode=functions[i].childNodes[0];
		      var namenode=functions[i].childNodes[1];
		      option.setAttribute("value",idnode.firstChild.nodeValue);
		   option.appendChild(document.createTextNode(namenode.firstChild.nodeValue)); 
		   selector.appendChild(option);
		   }
		  }else{
		    alert("Error");
		  }
		}
		}
		
		function loadCity(){
		var selector=  document.getElementById("province");
		var pid=selector.options[selector.selectedIndex].name;
		var cities=provinces[pid];
		
		var selector2= document.getElementById("city");
		   /*清除下拉框*/
           selector2.innerHTML='';
           /*加入加拉框首行*/
           var tip=document.createElement("option");
           tip.setAttribute("value","");
           tip.appendChild(document.createTextNode("请选择-------------------------"));
		   selector2.appendChild(tip);
		   
		     for(var i=0;i<cities.length;i++){ 
		      option = document.createElement("option");
		      option.setAttribute("value",cities[i]);
		      option.appendChild(document.createTextNode(cities[i])); 
		      selector2.appendChild(option);
		   }
		
		}
		
		/** add by hsq **/
		function eco(str){
             str = encodeURI(str);
             str = encodeURI(str);
             return str;
        } 
		/** above **/
		
		function doSearch(){
		 var industryid = document.getElementById("industry").value;
		 var functionid= document.getElementById("function").value;
		 var grade= document.getElementById("grade").value;
		 var workyears= document.getElementById("workyears").value;
		 var province=document.getElementById("province").value;
		 var city=document.getElementById("city").value;
		 var sex=document.getElementById("sex").value;
		 if(industryid==0&&functionid==0&&grade==""&&workyears==0&&province==""&&city=="") return;
		 
		 /*开始查询*/	 
		 alert("行业"+industryid+"职能"+functionid+"学历"+grade+"年限"+workyears+"城市"+city+"省份"+province+"性别"+sex);
		 /* add by hsqfire */
		 sex = eco(sex);
		 grade = eco(grade);
		 province = eco(province);
		 city = eco(city);
		 /* above */
		   createXmlHttp();
		  xmlHttp.onreadystatechange=showResult;
		  xmlHttp.open("GET","searchjobs.do?sex="+sex+"&industryid="+industryid+"&functionid="+functionid+"&workyears="+workyears+"&grade="+grade+"&city="+city+"&province="+province+"&ts="+new Date().getTime(),true);
		  xmlHttp.send(null);
		
		}
		function showResult(){
		if(xmlHttp.readyState==4){
		  if(xmlHttp.status==200){
		  document.getElementById("jobresult").innerHTML=xmlHttp.responseText;
		   
		  }else{
		    alert("Error");
		  }
		}
	  }
	  function applyJob(jobid){
	      var id=jobid;
	      alert(id);
          window.location='applyjob.do?jobid='+id+'&ts='+new Date().getTime();
	  }

  </script>
<link rel="stylesheet" href="index.css" type="text/css" />
<link rel="stylesheet" href="menu.css" type="text/css" />
<link rel="stylesheet" href="login.css" type="text/css" />
<link rel="stylesheet" href="jobresult.css" type="text/css" />
<link rel="stylesheet" href="jobsearch.css" type="text/css" />
<link rel="stylesheet" href="info.css" type="text/css" /></head>
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
				  <select id="industry" name="select" onchange="loadFunction();">
				    <option value="0">请选择-------------------------</option>
			      </select>
				</p>
              	<p class="date"><label>选择职能:</label>
				  <select id="function" name="select">
				    <option value="0">请选择-------------------------</option>
			      </select>
				</p>
				<p class="date"><label>选择学历:</label>
				  <select id="grade" name="select">
				    <option value="">请选择-------------------------</option>
				    <option value="本科">本科</option>
				    <option value="硕士">硕士</option>
				    <option value="博士">博士</option>
			      </select>
				</p>
				<p class="date"><label>工作年限:</label>
				  <select id="workyears" name="select">
				    <option value=0>请选择-------------------------</option>
				    <option value=1>1年以上</option>
				    <option value=2>2年以上</option>
			      </select>
				</p>
				<p class="date"><label>工作省份:</label>
				  <select id="province" name="select" onchange="loadCity();">
				    <option value="">请选择-------------------------</option>
				    <option name=0 value="浙江">浙江</option>
				    <option name=1 value="广东">广东</option>
				    <option name=2 value="黑龙江">黑龙江</option>
				    <option name=3 value="上海">上海市(直辖市)</option>
			      </select>
				</p>
				<p class="date"><label>工作城市:</label>
				  <select id="city" name="select">
				    <option value="">请选择-------------------------</option>
			      </select>
				</p>
				<p class="date"><label>工作性别:</label>
				  <select id="sex" name="select">
				    <option value="">请选择-------------------------</option>
				    <option value="男">男</option>
				    <option value="女">女</option>
			      </select>
				</p>
				<p class="date"> 
				  <input type="submit" name="Submit2" value="开始搜索" onclick="doSearch();"/>
				</p>
			    </div>
   	    <div id="jobresult">
		        <h3><span>搜索结果</span></h3>
		  <ui>   	        
         	<li class="jobdescript"> 职位描述 <input type="submit" value="申请" onclick="applyJob(1);"/></li>
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
