<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
 
<html> 
	<head>
		<title>JSP for UpdateFieldForm form</title>
	</head>
	<body>
	所选场地：
	<logic:iterate id="fieldlist" name="updlist">
	<bean:write name="fieldlist" property="address"/><html:link page="/fieldsystem/updateField1.jsp?address=${fieldlist.address}" paramId="ufid" paramName="fieldlist" paramProperty="id">更改</html:link>
	</logic:iterate>		
	</body>
</html>

