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
<link rel="stylesheet" href="info.css"  type="text/css"/>
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

  <p><strong>��ӭ��,˼�ƹ�˾ </strong></p>
  <p>       
    <input type="submit" name="Submit" value="ע����½" />
  </p>
  <div> 
		<ul id="cmenu"> 
		<li><a href="home.htm">���Ĺ�˾��Ϣ</a></li> 
		<li><a href="about.htm">���ְλ</a></li> 
		<li><a href="products.htm">�༭ְλ</a></li> 
		<li><a href="services.htm">���볡��</a></li> 
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
	             <div id="apply_job">
			    <h3>���볡��</h3>
			
				<p class="date"><label>�ص�:</label>
				  <select name="select2">
				    <option>��ѡ��----------------------</option>
				    <option>D¥100</option>
				    <option>���¥�๦����</option>
				    <option>���ѧԺ�ݽ���</option>
				    <option>����У��ͼ�������</option>
			      </select>
				</p>
				<p class="date"><label>����:</label>
				  <input type="text"  width="30" name="textfield2" />��
				  <input type="text"  width="25" name="textfield2" />��
				  <input type="text"  width="25" name="textfield2" />��
				</p>
				<p class="date"><label>��ʼʱ��:</label>
				  <input type="text"  width="25" name="textfield2" />ʱ
				  <input type="text"  width="25" name="textfield2" />��
			    </p>
				<p class="date"><label>����ʱ��:</label>
				  <input type="text"  width="25" name="textfield2" />ʱ
				  <input type="text"  width="25" name="textfield2" />��
			    </p>
				<p id="textarea" class="date"><label>����Ҫ��:</label>
				  <label>
				  <textarea name="textarea" rows="10">������</textarea>
				  </label>
				</p>
				<p class="date"> 
				  <input type="submit" name="Submit2" value="�ύ����" />
				</p>
				
			 </div>
		    	 <div id="filed_applied">
		        <h3>�Ѿ��ύ������</h3>
				 <applied_list>����δ�ύ�κ�����</applied_list>
			    </div>
				 <div id="field_replied">
		        <h3>�Ѿ�ȷ�ϵ�����</h3>
				 <replied_list>����δ�ύ�κ�����</replied_list>
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
