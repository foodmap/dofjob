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

<link rel="stylesheet" href="index.css" type="text/css" />
<link rel="stylesheet" href="menu.css" type="text/css" />
<link rel="stylesheet" href="login.css" type="text/css" />
<link rel="stylesheet" href="ad.css"  type="text/css"/>
<link rel="stylesheet" href="info.css"  type="text/css"/>
<link rel="stylesheet" href="field.css"  type="text/css"/>
</head>
<!-- The structure of this file is exactly the same as 2col_rightNav.html;
     the only difference between the two is the stylesheet they use -->
	 
	 
	 
<body>
<div id="container">
<div id="masthead">
  <div id="logo" ><br /><img src="img/logo.png"></div>
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
    <input type="submit" name="Submit" value="ע����½" />
  </p>
  <div> 
		<ul id="cmenu"> 
		<li><a href="home.htm">���Ĺ�˾��Ϣ</a></li> 
		<li><a href="about.htm">���ְλ</a></li> 
		<li><a href="products.htm">�༭ְλ</a></li> 
		<li><a href="services.htm">������</a></li> 
		<li><a href="contact.htm">ѧ���б�</a></li> 
		<li><a href="contact.htm">����</a></li>
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
	   <div id="update_field1">
			    <h3>���ĳ���</h3>

<html:form action="/updateField">
<p class="date"><label class="two">ѡ�񳡵�:</label>
		<html:select property="field_id" value="${param.ufid}">
        <html:option value="${param.ufid}"><%=new String((request.getParameter("address")).getBytes("ISO-8859-1"),"gb2312")%></html:option>
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
	<h3>������2009��1��12��</h3>
	</form>
  </div>
  <div id="rightlinks">
  <div class="relatedLinks">
    <h3>��Ŀ�Ƽ�</h3>
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
    <h3>��������</h3>
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
    <h3>��������</h3>
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
    <a href="#">��վ����</a> 
	<a href="#">��������</a> 
	<a href="#">��˽����</a> 
	<a href="#">��������</a>
	<a href="#">�ö�</a> 
	&copy;2008  Dof, All rights reserved</div>
</div>
</body>
</html>
