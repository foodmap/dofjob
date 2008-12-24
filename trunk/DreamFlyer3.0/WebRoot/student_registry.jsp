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
 <fieldset>
  <p><strong>&nbsp;&nbsp; ���ã�<em><bean:write name="current_user" property="name" scope="session"/></em>&nbsp;&nbsp; ͬѧ</strong></p>
  
  <p><strong>&nbsp;&nbsp; ��ӭ����DreamFlyer</strong></p>
  <p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ϵͳע��ҳ��</strong><br />&nbsp;</p>
   </fieldset>
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
      <li><a href="#">������˾�ع�"������ְ��"</a></li>
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
   <div id="jobsearch">
	            <div id="registerSinfo">
			    <h3>ѧ��ע��</h3>
		<html:form action="studentRegister" enctype = "multipart/form-data">					
				<p class="date"><label>����:</label>
				  <html:password property="password" />
				</p>
				<p class="date"><label>ȷ������:</label>
				  <html:password property="confirmpassword" />
				</p>
			   	<p class="date"><label>��ַ:</label>
				  <html:text property="address" />
				</p>
				<p class="date"><label>email:</label>
				  <html:text property="email" />
				</p>
				<p class="date"><label>�绰:</label>
				  <html:text property="telephone" />
				</p>
				<p class="date"><label>ͷ��:</label>
				 <html:file property="photo"></html:file>
				</p>
				<p id="textarea" class="date"><label>��������:</label>
				  <label>
				  <html:textarea property="description"/>
				  </label>
				</p>
				<p class="date"> 
				  <input type="submit" name="Submit2" value="ȷ���ύ" />
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
