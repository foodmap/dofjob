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
   <html:password property="password" size="14"/>
<br />
  </div>
  <div id="choser">
   ѧ��
   <html:radio property="usertype" value="student" />
   ��˾
   <html:radio property="usertype" value="company"/>
  </div>
  <div>
   <label for="vali">��֤��</label>
   <html:text property="verifycode" size="6" />
  <image src="testCheck.jsp">
   <br />
   </div>
  <div class="cookiechk">
   <label>
     <input type="checkbox" name="CookieYN" id="CookieYN" value="1" /> 
	 <a href="#" title="ѡ���Ƿ��¼������Ϣ">��ס��</a></label>
     <input name="lbtn" type="submit" class="button" value="��¼" />
     <a href="registryCheck.jsp">[ע��]</a>
  </div> 
  <div class="forgotpass"><a href="#">����������?</a></div> 
 </fieldset>
 </html:form>
</div>
  
<div id="leftlinks">
  <div class="relatedLinks">
    <h3>��ҵָ��</h3>
    <ul>
      <li><a href="#">ʧְΥ�������⳥����</a></li>
      <li><a href="#">08��Ӧ�챾�������н��ʮ��ְλ</a></li>
      <li><a href="#">�����ְ������"����"��?</a></li>
      <li><a href="#">�ƹ�����ʮ��������в</a></li>
      <li><a href="#">ְ��"ţ"������ü���Ҳ"ţ"��</a></li>
      <li><a href="#">����һ��˾�ع�"������ְ��"</a></li>
    </ul>
  </div>
  <div class="relatedLinks">
    <h3>У԰����</h3>
    <ul>
      <li><a href="#">�ַ������ൺ���г�����У2009��Ӧ���ҵ������</a></li>
      <li><a href="#">OracleУ԰ERP��Ŀ����</a></li>
      <li><a href="#">�Ϻ���ͨ��ѧ������ѧ������Ц���γ��롱ӭ�������ݳ�ͨ��</a></li>
      <li><a href="#">ũ��ҽҩ��Ժӭ�����</a></li>
      <li><a href="#">�Ž�У�����ŷ���������У</a></li>
      <li><a href="#">��ѧ��ѧ¥ʹ��ָ��</a></li>
    </ul>
  </div>
 <div class="relatedLinks">
    <h3>���ི��</h3>
    <ul>
      <li><a href="#">�����������й���˼����</a></li>
      <li><a href="#">�й���ͳѧ���о������ڽ��ִ����ݱ�</a></li>
      <li><a href="#">��ѧ��������ѧ��չ</a></li>
      <li><a href="#">�������������������о���ϵ�н���֮��ʮ��</a></li>
      <li><a href="#">��־����365��</a></li>
      <li><a href="#">����˲����Ĺ滮����</a></li>
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
				<p class="date">2008.12.7</p>
				<ul>
					<li><a href="#">Oracle��˾�ڽ���7�������ѧԺ��¥�ٿ�������</a></li>
					<li><a href="#">IBM��˾���ڽ��ڽ���У԰��Ƹ</a></li>
					<li><a href="#">���ͼ���(������Ἧ��������ҵ)2009������ѵ����Ƹ��</a></li>
					<li><a href="#">2009���Ա���У԰��Ƹ�����֪ͨ</a></li>
				</ul>
				<p class="date">2008.12.24</p>
				<ul>
					<li><a href="#">���Ŵ�ѧ2009�����߽�ѧ��˵����</a></li>
					<li><a href="#">�Ϻ��������ϵͳ�ɷ����޹�˾2009����Ƹ��</a></li>
					<li><a href="#">�Ϻ���ѧ������Ϣ��ѯ���޹�˾2009У԰������</a></li>
					<li><a href="#">�й������Ϻ���������2009��Ƹ��</a></li>
				</ul>
				<p class="more"><a href="#">more</a></p>
			  </div>
		      <div id="download_list">
			    <h3><span>��Դ����</span></h3>
				<p class="date">2008.12.7</p>
				<ul>
					<li><a href="#">����ְҵ����ѧԺ2009�����Ƹ�ƻ�</a></li>
					<li><a href="#">�Ϻ���ͨ��ѧ���Ϻ���ԴӦ���ҵ��������ҵ���������������˱�(�ױ�)</a></li>
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
