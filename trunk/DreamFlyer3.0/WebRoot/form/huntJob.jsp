<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for HuntJobForm form</title>
	</head>
	<body>
		<html:form action="/huntJob">
			sex : <html:radio property="sex" value="boy"/><html:errors property="sex"/><br/>
			subdate : <html:text property="subdate"/><html:errors property="subdate"/><br/>
			industry : <html:select property="industry"/><html:errors property="industry"/><br/>
			workyears : <html:text property="workyears"/><html:errors property="workyears"/><br/>
			function : <html:select property="function"/><html:errors property="function"/><br/>
			grade : <html:text property="grade"/><html:errors property="grade"/><br/>
			city : <html:select property="city"/><html:errors property="city"/><br/>
			<html:submit/><html:cancel/>
		</html:form>
	</body>
</html>

