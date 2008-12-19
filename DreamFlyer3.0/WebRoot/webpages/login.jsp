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

<script src="ad.js" type="text/javascript"></script>
</head>
<!-- The structure of this file is exactly the same as 2col_rightNav.html;
     the only difference between the two is the stylesheet they use -->
	 
	 
	 
<body>
<div id="container">
<div id="masthead">
  <div id="logo" ><img src="img/logo.png" /></div>
  <div id="leftbar"><img src="img/leftbar.gif"></div>
  <div id="rightbar">
   <img src="img/go.gif"/>
    <input name="textfield" type="text"/>
     <img src="img/search.gif"/>
  </div>
  <div id="navBar">
    <ul>
		<li id="current"><a href="#"><span>��ҳ</span></a></li>
		<li><a href="#"><span>�ҹ���</span></a></li>
		<li><a href="#"><span>��������</span></a></li>
		<li><a href="#"><span>��ҵָ��</span></a></li>
		<li><a href="#"><span>ѧ������</span></a></li>
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
 <html:form action="login">
 <fieldset>
  <legend>�û���¼</legend>
  <div id="username">
   <label for="Name">�û���</label>
   <html:text property="username" size="14"/>
   <br/>
  </div>
  <div>
   <label for="password">����</label>
   <html:password property="passwd" size="14"/>
<br />
  </div>
  <div id="choser">
   ѧ��
   <input name="radiobutton"  type="radio" value="radiobutton" />
   ��˾
   <input name="radiobutton" type="radio" value="radiobutton" />
  </div>
  <div>
   <label for="vali">��֤��</label>
   <input type="text" name="vali" id="vali" size="6" maxlength="6" />
  <image src="testCheck.jsp">
   <br />
   </div>
  <div class="cookiechk">
   <label>
     <input type="checkbox" name="CookieYN" id="CookieYN" value="1" /> 
	 <a href="#" title="ѡ���Ƿ��¼������Ϣ">��ס��</a></label>
     <input name="lbtn" type="submit" class="button" value="��¼" />
     <input name="rbtn" type="submit" class="button" value="ע��" />
  </div> 
  <div class="forgotpass"><a href="#">����������?</a></div> 
 </fieldset>
 </html:form>
</div>
  
<div id="leftlinks">
  <div class="relatedLinks">
    <h3>��ҵָ��</h3>
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
    <h3>У԰����</h3>
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
    <h3>���ི��</h3>
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


 <div id="middle">
     <div id="ads">
       <h2 id="pageName">Quick Review for Ads </h2>
       <div class="pb" jpe="pb:promotion-banner">
		<ul class="banners" id="promotion_banners">
    <li id="banners_1_body_1" class="current"><a href="http://www.ahaosky.com" target="_blank"><img src="ad/1.jpg" /></a></li>
	<li id="banners_2_body_1"><a href="http://www.ahaosky.com" target="_blank"><img src="ad/2.jpg" /></a></li>
	<li id="banners_3_body_1"><a href="http://www.ahaosky.com" target="_blank"><img src="ad/3.jpg" /></a></li>
	<li id="banners_4_body_1"><a href="http://www.ahaosky.com" target="_blank"><img src="ad/1.jpg" /></a></li>
	<li id="banners_5_body_1"><a href="http://www.ahaosky.com" target="_blank"><img src="ad/2.jpg" /></a></li>
	<li id="banners_6_body_1"><a href="http://www.ahaosky.com" target="_blank"><img src="ad/3.jpg" /></a></li>
		</ul>

		<div class="switcher">
			<ul class="points" id="banners">
			  <li class="current" id="banners_1">1</li>
	  		  <li id="banners_2">2</li>
	 		  <li id="banners_3">3</li>
	 		  <li id="banners_4">4</li>
	  		  <li id="banners_5">5</li>
	 		  <li id="banners_6">6</li>
	       </ul>
		   <div class="steps" id="banners_sts">
	 		 <div class="up"></div>
	 		 <div class="down"></div>
   	       </div>
       </div>
      </div>
     </div>
	  
	  
	<div id="list">
	             <div id="bulletin_list">
			    <h3><span>���¹���</span></h3>
				<p class="date">2008.10.1</p>
				<ul>
					<li><a href="#">��˾����ȷ�����µ���Ŀ�ﱸ��</a></li>
					<li><a href="#">i��g��t���˵�ѡ��˾���ζ��»�Ǹ�</a></li>
					<li><a href="#">�Թ�Ʊ������������ϸ�Ĺ滮</a></li>
					<li><a href="#">lh���ΰ칫����Ҫְ����׳�ɳ�</a></li>
				</ul>
				<p class="date">2008.10.1</p>
				<ul>
					<li><a href="#">��˾����ȷ�����µ���Ŀ�ﱸ��</a></li>
					<li><a href="#">i��g��t���˵�ѡ��˾���ζ��»�Ǹ�</a></li>
					<li><a href="#">�Թ�Ʊ������������ϸ�Ĺ滮</a></li>
					<li><a href="#">lh���ΰ칫����Ҫְ����׳�ɳ�</a></li>
				</ul>
				<p class="more"><a href="#">more</a></p>
			 </div>
		    	 <div id="job_list">
		        <h3><span>У԰��Ƹ</span></h3>
				<p class="date">2006.12.7</p>
				<ul>
					<li><a href="#">Oracle��˾�ڽ���7�������ѧԺ��¥�ٿ�������</a></li>
					<li><a href="#">IBM��˾���ڽ��ڽ���У԰��Ƹ</a></li>
				</ul>
				<p class="date">2008.09.24</p>
				<ul>
					<li><a href="#">��˾����25�������쵼������Ҫ����</a></li>
					<li><a href="#">��һ����Ŀ�ﱸ������ʼ����</a></li>
				</ul>
				<p class="more"><a href="#">more</a></p>
			  </div>
		      <div id="download_list">
			    <h3><span>��Դ����</span></h3>
				<p class="date">2006.12.7</p>
				<ul>
					<li><a href="#">ʱʱ������ͼ�����ܵ�ֽ��</a></li>
					<li><a href="#">�Զ��շ�װ�ø��£���������</a></li>
				</ul>
				<p class="more"><a href="#">more</a></p>
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
