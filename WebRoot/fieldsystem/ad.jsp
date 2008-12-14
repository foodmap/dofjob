<%@ page language="java" pageEncoding="gb2312"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%  String[] _mode = new String[3];
    _mode[0] = "apply";
    _mode[1] = "delete";
    _mode[2] = "update";
    pageContext.getSession().setAttribute("mode1",_mode[0]);
    pageContext.getSession().setAttribute("mode2",_mode[1]);
    pageContext.getSession().setAttribute("mode3",_mode[2]);
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
    <html:link action="/apply" paramId="mode1" paramName="mode1">申请场地</html:link><br>
    <html:link action="/apply" paramId="mode1" paramName="mode2">删除场地</html:link><br>
    <html:link action="/apply" paramId="mode1" paramName="mode3">更改场地</html:link><br>
  </body>
</html:html>
