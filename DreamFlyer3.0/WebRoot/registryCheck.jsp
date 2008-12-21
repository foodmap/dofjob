<%@ page language="java" pageEncoding="GBK"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0504)http://jaccount.sjtu.edu.cn/jaccount/login?sid=JAPortal00000&returl=%43%4e%57%49%52%61%76%70%52%56%63%45%4e%31%41%58%4b%77%7a%6f%30%5a%52%4f%78%69%70%51%2f%6e%39%4d%4a%72%36%66%64%33%77%64%50%69%52%64%6c%62%52%5a%47%74%41%78%6c%65%4b%56%78%34%6f%41%2b%66%62%53%74%51%44%74%6f%53%55%64%4e%42%62%77&se=%43%41%32%31%2f%6e%57%4e%6f%71%59%4a%4f%6b%74%76%55%7a%44%67%63%68%44%65%75%43%69%7a%4d%69%51%52%43%31%30%78%33%57%38%7a%4d%7a%56%74%47%33%57%6a%79%78%6b%65%38%46%5a%66%41%4e%6b%65%56%32%74%7a%53%77%3d%3d -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>上海交通大学统一身份认证</TITLE>
<SCRIPT language=javascript type=text/javascript>
	document.domain = "sjtu.edu.cn";
</SCRIPT>

<SCRIPT language=javascript type=text/javascript>
function MOSSlogin(u, p) {
	var xmlhttp = null;
   	if(window.XMLHttpRequest){ //IE7, Mozilla ,Firefox 等浏览器内置该对象

        	xmlhttp = new XMLHttpRequest();

	}
	else if(window.ActiveXObject){ //IE6、IE5

        	try{
            		xmlhttp = new ActiveXObject("MSXML2.XMLHTTP");
        	}
        	catch (e){ ; }

        	if(xmlhttp == null) try { xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");} catch (e){; }

    	}

       var user = "its\\" + u;
	var pass = p;
	xmlhttp.open("post","http://myhome.sjtu.edu.cn", false, user, pass);
       xmlhttp.send();
} 
</SCRIPT>

<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="sjtu/login.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.2900.5694" name=GENERATOR><style type="text/css">
<!--
body {
	background-image: url(sjtu/back.jpg);
}
-->
</style></HEAD>
<BODY onload=document.form1.user.focus();><IFRAME id=loginframe 
src="sjtu/login.htm" width=0 height=0></IFRAME>
<DIV id=pagebody><IMG height=89 src="sjtu/logo.jpg" width=470 
border=0> 
<DIV id=loginbox>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD><IMG height=34 src="sjtu/login-top.gif" width=235></TD></TR>
  <TR>
    <TD>
      <html:form action="relogin">
      <TABLE cellSpacing=0 cellPadding=0 width="92%" align=center 
        border=0><INPUT type=hidden value=JAPortal00000 name=sid> <INPUT 
        type=hidden 
        value=CNWIRavpRVcEN1AXKwzo0ZROxipQ/n9MJr6fd3wdPiRdlbRZGtAxleKVx4oA+fbStQDtoSUdNBbw 
        name=returl> <INPUT type=hidden 
        value=CA21/nWNoqYJOktvUzDgchDeuCizMiQRC10x3W8zMzVtG3Wjyxke8FZfANkeV2tzSw== 
        name=se> 
        <TBODY>
        <TR>
          <TD colSpan=2>&nbsp; </TD></TR>
        <TR>
          <TD align=right width="23%"><IMG height=23 
            src="sjtu/login-user.gif" width=25></TD>
          <TD><html:text property="username"></html:text></TD></TR>
        <TR>
          <TD colSpan=2>&nbsp;</TD></TR>
        <TR>
          <TD align=right><IMG height=23 
            src="sjtu/login-pwd.gif" width=25></TD>
          <TD><html:password property="password"></html:password></TD></TR>
        <TR>
          <TD colSpan=2>
            <TABLE cellSpacing=6 cellPadding=5 width="100%" border=0>
              <TBODY>
              <TR>
                <TD align=right><INPUT type=image 
                  src="sjtu/login-buttom.gif" name=imageField></TD>
                <TD><A 
                  href="http://entitle.sjtu.edu.cn/AccountProtectManage/FindPwdByMobile.aspx"><IMG 
                  height=21 src="sjtu/login-button2.gif" width=83 
                  border=0></A></TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD colSpan=2><B>没有统一认证帐户？</B></TD></TR>
        <TR>
          <TD align=middle colSpan=2 height=30>
            <TABLE cellSpacing=3 cellPadding=3 width="100%" border=0>
              <TBODY>
              <TR>
                <TD align=right><B class=yellow>现在申请！</B></TD>
                <TD><A 
                  href="http://entitle.sjtu.edu.cn/myaccountmanage/RegistIndex.html" 
                  target=_new><IMG src="sjtu/login-sign.gif" 
                  border=0></A></TD>
                <TD><A class=yellowlink 
                  href="http://jaccount.sjtu.edu.cn/jaccount/help.jsp"><B>说明</B></A></TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD vAlign=bottom align=middle colSpan=2 height=25><A 
            href="http://jaccount.sjtu.edu.cn/jaccount/member_service.jsp">成员服务</A>&nbsp; 
            &nbsp;<A 
            href="http://jaccount.sjtu.edu.cn/jaccount/security_privacy.jsp">隐私安全</A>&nbsp; 
            &nbsp; <A 
            href="http://jaccount.sjtu.edu.cn/jaccount/index.jsp">关于Jaccount</A></TD></TR>
        <TR>
          <TD colSpan=2>
            <HR color=#cccccc SIZE=1>
          </TD></TR>
        <TR>
          <TD align=middle colSpan=2><IMG height=49 
            src="sjtu/login-logo.gif" 
      width=166></TD></TR></TBODY></TABLE></html:form></TD></TR>
  <TR>
    <TD><IMG height=10 src="sjtu/login-foot.gif" 
  width=235></TD></TR></TBODY></TABLE></DIV>
<DIV id=info>
<UL>
  <LI>这是校园网络的内部门户站点。您可以登录校园信息服务综合平台，通过同一个账户名/密码，访问交大校园网的各种网络应用系统和信息资源。 
</LI></UL></DIV></DIV>
<DIV id=Footer>
<TABLE cellSpacing=5 cellPadding=0 width="75%" border=0>
  <TBODY>
  <TR>
    <TD>&nbsp;</TD>
    <TD>&nbsp;</TD></TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD><SPAN class=yellow>联系方式</SPAN>： 徐汇:浩然高科技大楼<SPAN class=en>4</SPAN>楼 
      <SPAN class=en>62932901</SPAN> 闵行:计算中心<SPAN class=en>2</SPAN>楼 <SPAN 
      class=en>54742547</SPAN></TD></TR>
  <TR>
    <TD align=right>&nbsp;</TD>
    <TD align=right><SPAN class=en>&copy;2008</SPAN> 
上海交通大学网络信息中心</TD></TR></TBODY></TABLE></DIV></BODY></HTML>
