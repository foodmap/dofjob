<%@ page language="java" import="java.util.*,com.dreamflyer.user.Company" pageEncoding="gb2312"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
 <title>applyField_succ.jsp</title>
 <script type="text/javascript">
       function logout(){
       alert("��ӭ�����ٴι���");
       window.location='logout.do?&ts='+new Date().getTime(); 
      }
  </script>
<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
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
  <div id="logo" ><img src="img/logo.png"/></div>
  <div id="leftbar"><img src="img/leftbar.gif"/></div>
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
		<div class="undo"><html:link page="/addjob.jsp">ְλ����</html:link></div>
		<div class="do">���ع���</div>
		<div class="undo"><html:link page="/getApplyer.jsp">�쿴ѧ���б�</html:link></div>
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
	   <div id="applyField_succ">
			    <h3>���볡��</h3>
			    <p class="date">
                 <html:link page="/field_ad.jsp"><img class="fieldimg" src="img/succ.jpg"/>��ѯ�ɹ���������ع���ҳ��</html:link>
                </p>
                <p class="date">����ѡ�ĳ��أ�</p>
   <div class="field_iterator">
     <table width="435" border="0">
                  <tr>
                    <th width="163" scope="col">��������</th>
                    <th width="163" scope="col">��ʼʱ��</th>
                    <th width="163" scope="col">����ʱ��</th>
                  </tr>           
                     <logic:iterate id="result" name="result">
				  <tr>
    				   <td width="163"><bean:write name="result" property ="address"/></td>
   					   <td width="163"><bean:write name="result" property ="startTime"/></td>
   				 	   <td width="163"><bean:write name="result" property ="endTime"/></td>
	 			  </tr>
                    </logic:iterate>
	             </table>
        </div>
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
      <li><a href="#">������˼���忴�ҵ�˼��·��</a></li>
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
      <li><a href="#">�����ɼ��ġ�ְ�����ԡ�</a></li>
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