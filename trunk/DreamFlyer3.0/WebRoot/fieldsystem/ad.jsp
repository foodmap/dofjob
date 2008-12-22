<%@ page language="java" pageEncoding="gb2312"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<% 
    pageContext.getSession().setAttribute("company_id","1");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>ad.jsp</title>

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
    You can do: <br>
    <table width="276" height="88">
    <tr>
    <td>
    <html:link action="/apply">申请场地</html:link><br/>
    </td>
    <td>
    <html:link action="/delete">删除场地</html:link><br/>
    </td>
    <td>
    <html:link action="/update">更改场地</html:link><br/>
    </td>
    <td>
    <html:link action="/lookup">查看场地</html:link>
    </td>
    </tr>
    </table>
  </body>
</html:html>
