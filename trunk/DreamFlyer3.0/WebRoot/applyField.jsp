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
       alert("��ӭ�����ٴι���");
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
		<li><a href="#"><span>��ҳ</span></a></li>
		<li><a href="#"><span>�ҹ���</span></a></li>
		<li><a href="#"><span>��������</span></a></li>
		<li><a href="#"><span>��ҵָ��</span></a></li>
		<li><a href="#"><span>ѧ������</span></a></li>
		<li id="current"><a href="#"><span>��˾����</span></a></li>
		<li><a href="#"><span>��Դ����</span></a></li>
		<li><a href="#"><span>��������</span></a></li>
    </ul>
   </div>

</div>
<!-- end masthead -->
<div id="content">
 <div id="left">
  <div id="login">
 
 <fieldset>

  <p><strong>��ӭ��,<%=((Company)request.getSession().getAttribute("current_user")).getName()%> </strong></p>
  <p>       
         <input type="submit" name="Submit" value="ע����½" onclick="logout();"/>
  </p>
  <div id="leftnav"> 
		<div class="undo"><a href="#">ְλ����</a></div>
		<div class="do">���ع���</div>
		<div class="undo"><a href="#">�쿴ѧ���б�</a></div>
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
			    <h3>���볡��</h3>

<html:form action="/applyField">
<p class="date"><label class="two">ѡ�񳡵�:</label>
		<html:select property="field_id">
        <html:optionsCollection name="flist" label="address" value="id"/>
        </html:select><html:errors property="field_id"/>		 
</p>
<p class="date"><label class="two">ѡ������:��</label>
    <html:select property="start_year">
    <html:option value="2008">2008</html:option>
    </html:select><html:errors property = "start_year"/>
</p>
<p class="date"><label class="two">��</label>
    <html:select property="start_month"  >    
	<html:option value = "1">һ��</html:option>
	<html:option value = "2">����</html:option>
	<html:option value = "3">����</html:option>
	<html:option value = "4">����</html:option>
	<html:option value = "5">����</html:option>
	<html:option value = "6">����</html:option>
	<html:option value = "7">����</html:option>
	<html:option value = "8">����</html:option>
	<html:option value = "9">����</html:option>
	<html:option value = "10">ʮ��</html:option>
	<html:option value = "11">ʮһ��</html:option>
	<html:option value = "12">ʮ����</html:option>
</html:select><html:errors property="start_month"/><br/>
</p>
<p class="date"><label class="two">��</label>
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
<p class="date"><label class="two">��ʼʱ��:ʱ</label>
   <html:text property="start_hour"></html:text><html:errors property="start_hour"/>
</p>
<p class="date"><label class="two">��</label>
  <html:text property="start_minute"></html:text><html:errors property="start_minute"/><br/>
</p>
<p class="date"><label class="two">����ʱ��:ʱ</label>
   <html:text property="end_hour"></html:text><html:errors property="end_hour"/>
</p>
<p class="date"><label class="two">��</label>
  <html:text property="end_minute"></html:text><html:errors property="end_minute"/>
</p>
<p class="fd_bar">
<html:submit>ȷ��</html:submit><html:reset>����</html:reset><html:cancel>ȡ��</html:cancel>
</p>
</html:form>

			 </div>
       </div>
</div>


 <div id="right">
    <div id="datebar">
	<form>
	<h3>2008��12��25��</h3>
       <h4>(����)</h4>
	</form>
  </div>
  <div id="rightlinks">
  <div class="relatedLinks">
    <h3>��Ŀ�Ƽ�</h3>
    <ul>
      <li><a href="#">���������豸Զ�̼����������ϵͳ</a></li>
      <li><a href="#">���ٳ�������ϵͳ</a></li>
      <li><a href="#">�����˼���忴�ҵ�˼��·��</a></li>
      <li><a href="#">΢С��ԭͨ���ڷ�������ǿ��</a></li>
      <li><a href="#">̫���ܿյ����������</a></li>
      <li><a href="#">���򻷾���֪���м��֧�ַ���ƽ̨</a></li>
    </ul>
  </div>
  <div class="relatedLinks">
    <h3>��������</h3>
    <ul>
      <li><a href="#">08��GRE�ڵؿ�����3��</a></li>
      <li><a href="#">��������Ӣ��֤�鿼�������Ŷ�</a></li>
      <li><a href="#">[�Ͷ���|�Ͷ���ͬ]�����ڽ�����ת����ô�죿</a></li>
      <li><a href="#">�·������ƶ��ų�������ҵ�ĸ�</a></li>
      <li><a href="#">��λ������ͬ��δ����ô������</a></li>
      <li><a href="#">���ɼ��ġ�ְ�����ԡ�</a></li>
    </ul>
  </div>
 <div class="relatedLinks">
    <h3>��������</h3>
    <ul>
      <li><a href="#">�Ϻ���ͨ��ѧ�оͰ�</a></li>
      <li><a href="#">ǰ������</a></li>
      <li><a href="#">�л�Ӣ����</a></li>
      <li><a href="#">������Ƹ</a></li>
      <li><a href="#">58ͬ����</a></li>
      <li><a href="#">�Ϻ���Ƹ��</a></li>
    </ul>
  </div>
 </div> 
</div>
</div>
<div id="siteInfo"> 
    <a href="#">��վ����</a> 
	<a href="#">��������</a> 
	<a href="#">��˽����</a> 
	<a href="#">��������</a>
	<a href="#">�ö�</a> 
	&copy;2008  Dof, All rights reserved</div>
</div>
</body>
</html>
