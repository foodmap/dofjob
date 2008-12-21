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
             <h3><span>搜索结果</span></h3>
          <%
             List result =(ArrayList) request.getAttribute("jobresult");
           %>
		  <ui>
		  <%for(int i=0;i<result.size();i+=2){ %>   
         	<li class="jobdescript"> 职位描述<input type="submit" value="申请" onclick="apply(<%=result.get(i) %> %>);"/></li>
			<li class="jobdetail"> <%=result.get(i+1) %></li>
		  <%} %>
		  </ui>
    
  </body>
</html>
