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
		<li><a href="#"><span>��ҳ</span></a></li>
		<li><a href="#"><span>�ҹ���</span></a></li>
		<li><a href="#"><span>��������</span></a></li>
		<li><a href="#"><span>��ҵָ��</span></a></li>
		<li id="current"><a href="#"><span>ѧ������</span></a></li>
		<li><a href="#"><span>��˾����</span></a></li>
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

  <p><strong>��ӭ��, <bean:write name="current_user" property="username" scope="session"/> ͬѧ </strong></p>
  <p>
  <a href="logout.do">[ע��]</a>      
  </p>
  <div> 
		<ul id="cmenu"> 
		<li><a href="home.htm">���ĸ�����Ϣ</a></li> 
		<li><a href="about.htm">�ҹ���</a></li> 
		<li><a href="products.htm">�����ղؼ�</a></li> 
		<li><a href="contact.htm">���¼���</a></li> 
		<li><a href="contact.htm">�ҵ�����</a></li>
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
			    <h3><span>�ҹ���</span></h3>
				<p class="date"><label>ѡ����ҵ:</label>
				  <select name="select">
				    <option>��ѡ��----------------------</option>
				    <option>IT</option>
				    <option>����</option>
			      </select>
				</p>
              	<p class="date"><label>ѡ��ְ��:</label>
				  <select name="select">
				    <option>��ѡ��----------------------</option>
				    <option>��Ŀ����</option>
				    <option>���ʦ</option>
			      </select>
				</p>
				<p class="date"><label>ѡ��ѧ��:</label>
				  <select name="select">
				    <option>��ѡ��----------------------</option>
				    <option>˶ʿ</option>
				    <option>��ʿ</option>
			      </select>
				</p>
				<p class="date"><label>��������:</label>
				  <select name="select">
				    <option>��ѡ��----------------------</option>
				    <option>1</option>
				    <option>2</option>
			      </select>
				</p>
				<p class="date"><label>�����ص�:</label>
				  <select name="select">
				    <option>��ѡ��----------------------</option>
				    <option>�Ϻ�</option>
				    <option>����</option>
			      </select>
				</p>
                  
				
			    </div>
   	    <div id="jobresult">
		        <h3><span>�������</span></h3>
		     <ui>   
         	<li class="jobdescript"> ְλ���� </li>
			<li class="jobdetail"> ��ҵ: ����� ְ��: �������ʦ ˼�� �Ϻ� ѧ��Ҫ��: ���� ����Ҫ��: 0�� �Ա�Ҫ��: null ��������: 30 Dec 2008 16:00:00 GMT ����Ҫ��: null</li>

			<li class="jobdescript"> ְλ���� </li>
			<li class="jobdetail"> ��ҵ: ����� ְ��: �������ʦ ˼�� �Ϻ� ѧ��Ҫ��: ���� ����Ҫ��: 0�� �Ա�Ҫ��: null ��������: 30 Dec 2008 16:00:00 GMT ����Ҫ��: null</li>
			<li class="jobdescript"> ְλ���� </li>
			<li class="jobdetail"> ��ҵ: ����� ְ��: �������ʦ ˼�� �Ϻ� ѧ��Ҫ��: ���� ����Ҫ��: 0�� �Ա�Ҫ��: null ��������: 30 Dec 2008 16:00:00 GMT ����Ҫ��: null</li>
			<li class="jobdescript"> ְλ���� </li>
			<li class="jobdetail"> ��ҵ: ����� ְ��: �������ʦ ˼�� �Ϻ� ѧ��Ҫ��: ���� ����Ҫ��: 0�� �Ա�Ҫ��: null ��������: 30 Dec 2008 16:00:00 GMT ����Ҫ��: null</li>
			<li class="jobdescript"> ְλ���� </li>
			<li class="jobdetail"> ��ҵ: ����� ְ��: �������ʦ ˼�� �Ϻ� ѧ��Ҫ��: ���� ����Ҫ��: 0�� �Ա�Ҫ��: null ��������: 30 Dec 2008 16:00:00 GMT ����Ҫ��: null</li>
			<li class="jobdescript"> ְλ���� </li>
			<li class="jobdetail"> ��ҵ: ����� ְ��: �������ʦ ˼�� �Ϻ� ѧ��Ҫ��: ���� ����Ҫ��: 0�� �Ա�Ҫ��: null ��������: 30 Dec 2008 16:00:00 GMT ����Ҫ��: null</li>
			<li class="jobdescript"> ְλ���� </li>
			<li class="jobdetail"> ��ҵ: ����� ְ��: �������ʦ ˼�� �Ϻ� ѧ��Ҫ��: ���� ����Ҫ��: 0�� �Ա�Ҫ��: null ��������: 30 Dec 2008 16:00:00 GMT ����Ҫ��: null</li>
		  </ui>
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
