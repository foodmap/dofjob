<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import="java.util.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Index response page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	

  </head>
  
  <body>
             <h3><span>已申请该职位的学生列表</span></h3>
          <%
             List result =(ArrayList) request.getAttribute("applyerresult");
           %>
		  <ui>
		  <%for(int i=0;i<result.size();i++){ %>   
         	<li class="jobdescript"> 学生信息</li>
			<li class="jobdetail"> <%=result.get(i) %></li>
		  <%} %>
		  </ui>
    
  </body>
</html>