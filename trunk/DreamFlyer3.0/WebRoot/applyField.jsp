<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,com.dreamflyer.user.Company" errorPage="" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%
if(request.getSession().getAttribute("current_user") == null)
{
      response.sendRedirect("error1.jsp");
      return;
}
 %>
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
Now = new Date();
NowDay = Now.getDate();
NowMonth = Now.getMonth();
NowYear = Now.getYear();
if (NowYear < 2000) NowYear += 1900; //for Netscape

//function for returning how many days there are in a month including leap years
function DaysInMonth(WhichMonth, WhichYear)
{
  var DaysInMonth = 31;
  if (WhichMonth == "Apr" || WhichMonth == "Jun" || WhichMonth == "Sep" || WhichMonth == "Nov") DaysInMonth = 30;
  if (WhichMonth == "Feb"  &&  (WhichYear/4) != Math.floor(WhichYear/4))	DaysInMonth = 28;
  if (WhichMonth == "Feb"  &&  (WhichYear/4) == Math.floor(WhichYear/4))	DaysInMonth = 29;
  return DaysInMonth;
}

//function to change the available days in a months
function ChangeOptionDays(Which)
{  
  DaysObject = document.forms[1].elements[2];
  MonthObject = document.forms[1].elements[1];
  YearObject = document.forms[1].elements[0];

  Month = MonthObject.options[MonthObject.selectedIndex].value;
  Year = YearObject.options[YearObject.selectedIndex].value;
  DaysForThisSelection = DaysInMonth(Month, Year);
  CurrentDaysInSelection = DaysObject.options.length;
  if (CurrentDaysInSelection > DaysForThisSelection)
  {
    for (i=0; i<(CurrentDaysInSelection-DaysForThisSelection); i++)
    {
      DaysObject.options[DaysObject.options.length - 1] = null
    }
  }
  if (DaysForThisSelection > CurrentDaysInSelection)
  {
    for (i=0; i<(DaysForThisSelection-CurrentDaysInSelection); i++)
    {
      NewOption = new Option(DaysObject.options.length + 1);
      DaysObject.add(NewOption);
    }
  }
    if (DaysObject.selectedIndex < 0) DaysObject.selectedIndex == 0;
}

//function to set options to today
function SetToToday(Which)
{
  DaysObject = eval("document.Form1." + Which + "Day");
  MonthObject = eval("document.Form1." + Which + "Month");
  YearObject = eval("document.Form1." + Which + "Year");

  YearObject[0].selected = true;
  MonthObject[NowMonth].selected = true;

  ChangeOptionDays(Which);

  DaysObject[NowDay-1].selected = true;
}

//function to write option years plus x
function WriteYearOptions(YearsAhead)
{
  line = "";
  for (i=0; i<YearsAhead; i++)
  {
   
  }
  return line;
}
function logout(){
       alert("欢迎您的再次光临");
       window.location='logout.do?&ts='+new Date().getTime(); 
      }
//  End -->
</script>
<link rel="stylesheet" href="index.css" type="text/css" />
<link rel="stylesheet" href="menu.css" type="text/css" />
<link rel="stylesheet" href="login.css" type="text/css" />
<link rel="stylesheet" href="ad.css"  type="text/css"/>
<link rel="stylesheet" href="info.css"  type="text/css"/>
<link rel="stylesheet" href="field.css"  type="text/css"/>
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

  <p><strong>欢迎您,<%=((Company)request.getSession().getAttribute("current_user")).getName()%> </strong></p>
  <p>       
         <input type="submit" name="Submit" value="注销登陆" onclick="logout();"/>
  </p>
  <div id="leftnav"> 
		<div class="undo"><a href="#">职位管理</a></div>
		<div class="do">场地管理</div>
		<div class="undo"><a href="#">察看学生列表</a></div>
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
	   <div id="apply_field">
			    <h3>申请场地</h3>

<html:form action="/applyField">
<p class="date"><label class="two">选择场地:</label>
		<html:select property="field_id">
        <html:optionsCollection name="flist" label="address" value="id"/>
        </html:select><html:errors property="field_id"/>		 
</p>
<p class="date"><label class="two">选择日期:年</label>
    <html:select property="start_year">
    <html:option value="2008">2008</html:option>
    </html:select><html:errors property = "start_year"/>
</p>
<p class="date"><label class="two">月</label>
    <html:select property="start_month"  >    
	<html:option value = "1">一月</html:option>
	<html:option value = "2">二月</html:option>
	<html:option value = "3">三月</html:option>
	<html:option value = "4">四月</html:option>
	<html:option value = "5">五月</html:option>
	<html:option value = "6">六月</html:option>
	<html:option value = "7">七月</html:option>
	<html:option value = "8">八月</html:option>
	<html:option value = "9">九月</html:option>
	<html:option value = "10">十月</html:option>
	<html:option value = "11">十一月</html:option>
	<html:option value = "12">十二月</html:option>
</html:select><html:errors property="start_month"/><br/>
</p>
<p class="date"><label class="two">日</label>
    <html:select property="start_day" >
	<html:option value="1">1</html:option>
	<html:option value="2">2</html:option>
	<html:option value="3">3</html:option>
	<html:option value="4">4</html:option>
	<html:option value="5">5</html:option>
	<html:option value="6">6</html:option>
	<html:option value="7">7</html:option>
	<html:option value="8">8</html:option>
	<html:option value="9">9</html:option>
	<html:option value="10">10</html:option>
	<html:option value="11">11</html:option>
	<html:option value="12">12</html:option>
	<html:option value="13">13</html:option>
	<html:option value="14">14</html:option>
	<html:option value="15">15</html:option>
	<html:option value="16">16</html:option>
	<html:option value="17">17</html:option>
	<html:option value="18">18</html:option>
	<html:option value="19">19</html:option>
	<html:option value="20">20</html:option>
	<html:option value="21">21</html:option>
	<html:option value="22">22</html:option>
	<html:option value="23">23</html:option>
	<html:option value="24">24</html:option>
	<html:option value="25">25</html:option>
	<html:option value="26">26</html:option>
	<html:option value="27">27</html:option>
	<html:option value="28">28</html:option>
	<html:option value="29">29</html:option>
	<html:option value="30">30</html:option>
	<html:option value="31">31</html:option>
</html:select><html:errors property="start_day"/>
</p>
<p class="date"><label class="two">开始时间:时</label>
   <html:text property="start_hour"></html:text><html:errors property="start_hour"/>
</p>
<p class="date"><label class="two">分</label>
  <html:text property="start_minute"></html:text><html:errors property="start_minute"/><br/>
</p>
<p class="date"><label class="two">结束时间:时</label>
   <html:text property="end_hour"></html:text><html:errors property="end_hour"/>
</p>
<p class="date"><label class="two">分</label>
  <html:text property="end_minute"></html:text><html:errors property="end_minute"/>
</p>
<p class="fd_bar">
<html:submit>确定</html:submit><html:reset>重置</html:reset><html:cancel>取消</html:cancel>
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
