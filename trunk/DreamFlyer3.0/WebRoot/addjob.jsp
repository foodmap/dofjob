<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@   taglib   prefix= "html "   uri= "http://struts.apache.org/tags-html"   %> 
<%@   taglib   prefix= "bean "   uri= "http://struts.apache.org/tags-bean"   %> 
<%@   taglib   prefix= "logic "  uri= "http://struts.apache.org/tags-logic" %> 
<%@   taglib   prefix="tiles"    uri="http://struts.apache.org/tags-tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>SJTU JOB HUNTING HOMEPAGE</title>

<script type="text/javascript">
 var xmlHttp;
 var provinces=new Array();
 provinces[0]=['����'];
 provinces[1]=['����','տ��']; 
 provinces[2]=['������','������'];
  provinces[3]=['�Ϻ���'];
 function addLoadEvent(func) 
{
  var oldonload = window.onload;
  if (typeof window.onload != 'function') 
  {
    window.onload = func;
  } 
  else 
  {
    window.onload = function() 
    {
      if (oldonload) 
     {
        oldonload();
      }
      func();
    }
  }
}

addLoadEvent(function() {
  /* more code to run on page load */ 
  loadIndustry();
}
);

		function createXmlHttp(){
		   if(window.XMLHttpRequest){
		     xmlHttp=new XMLHttpRequest();
		     
		   }else {xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		   }
		}
		function loadIndustry(){
		  createXmlHttp();
		  xmlHttp.onreadystatechange=showIndustry;
		  xmlHttp.open("GET","getindustry.do?ts="+new Date().getTime(),true);
		  xmlHttp.send(null);
		
		}
		function showIndustry(){
		  if(xmlHttp.readyState==4){
		  if(xmlHttp.status==200){
		  var industries=xmlHttp.responseXML.getElementsByTagName("industry");
		   var selector=  document.getElementById("industry");
        
		   for(var i=0;i<industries.length;i++){
		    option = document.createElement("option");
		      var idnode=industries[i].childNodes[0];
		      var namenode=industries[i].childNodes[1];
		      option.setAttribute("value",idnode.firstChild.nodeValue);
		   option.appendChild(document.createTextNode(namenode.firstChild.nodeValue)); 
		   selector.appendChild(option);
		   }
		  }else{
		    alert("Error");
		  }
		}
		}
		
		function loadFunction(){
		  var industryid = document.getElementById("industry").value;
		  if(industryid=="") return;
		   createXmlHttp();		  
		  xmlHttp.onreadystatechange=showFunction;
		  xmlHttp.open("GET","getfunctions.do?industryid="+industryid+"&ts="+new Date().getTime(),true);
		  xmlHttp.send(null);
		}
	   
	  function showFunction(){
		  if(xmlHttp.readyState==4){
		  if(xmlHttp.status==200){
		 
		   var selector=  document.getElementById("function");
		   /*���������*/
           selector.innerHTML='';
           /*�������������*/
           var tip=document.createElement("option");
           tip.setAttribute("value","0");
           tip.appendChild(document.createTextNode("��ѡ��-------------------------"));
		   selector.appendChild(tip);
		   
		    var functions=xmlHttp.responseXML.getElementsByTagName("function");
		  /*������������ҵ��Ӧ��ְ��*/
		 
		   for(var i=0;i<functions.length;i++){
		   
		    option = document.createElement("option");
		      var idnode=functions[i].childNodes[0];
		      var namenode=functions[i].childNodes[1];
		      option.setAttribute("value",idnode.firstChild.nodeValue);
		   option.appendChild(document.createTextNode(namenode.firstChild.nodeValue)); 
		   selector.appendChild(option);
		   }
		  }else{
		    alert("Error");
		  }
		}
		}
		
		function loadCity(){
		var selector=  document.getElementById("province");
		var pid=selector.options[selector.selectedIndex].name;
		var cities=provinces[pid];
		
		var selector2= document.getElementById("city");
		   /*���������*/
           selector2.innerHTML='';
           /*�������������*/
           var tip=document.createElement("option");
           tip.setAttribute("value","");
           tip.appendChild(document.createTextNode("��ѡ��-------------------------"));
		   selector2.appendChild(tip);
		   
		     for(var i=0;i<cities.length;i++){ 
		      option = document.createElement("option");
		      option.setAttribute("value",cities[i]);
		      option.appendChild(document.createTextNode(cities[i])); 
		      selector2.appendChild(option);
		   }
		
		}
		
		/** add by hsq **/
		function eco(str){
             str = encodeURI(str);
             str = encodeURI(str);
             return str;
        } 
		/** above **/
		
		function addJob(){
		
		
		 var industryid = document.getElementById("industry").value;
		 var functionid= document.getElementById("function").value;
		 var grade= document.getElementById("grade").value;
		 var workyears= document.getElementById("workyears").value;
		 var province=document.getElementById("province").value;
		 var city=document.getElementById("city").value;
		 var sex=document.getElementById("sex").value;
		 var demand=document.getElementById('demand').innerHTML;
		 var descript=document.getElementById('descript').innerHTML;
		 var num=document.getElementById('number').value;
		 if(industryid==0&&functionid==0&&grade==""&&workyears==0&&province==""&&city=="") return;
		 
		 /*��ʼ��ѯ*/	 
		 alert("��ҵ"+industryid+"ְ��"+functionid+"ѧ��"+grade+"����"+workyears+"����"+city+"ʡ��"+province+"�Ա�"+sex+"Ҫ��"+demand+"����"+descript+"����"+num);
		   
		 /* add by hsqfire */
		 sex = eco(sex);
		 grade = eco(grade);
		 province = eco(province);
		 city = eco(city);
		 demand = eco(demand);
		 descript = eco(descript);
		 /* above */  
		   
		   createXmlHttp();
		  xmlHttp.onreadystatechange=showAddedResult;
		  xmlHttp.open("GET","addjob.do?sex="+sex+"&industryid="+industryid+"&functionid="+functionid+"&workyears="+workyears+"&grade="+grade+"&city="+city+"&province="+province+"&demand="+demand+"&description="+descript+"&number="+num+"&ts="+new Date().getTime(),true);
		  xmlHttp.send(null);
		
		}
		function showAddedResult(){
		if(xmlHttp.readyState==4){
		  if(xmlHttp.status==200){
		  document.getElementById("job_added").innerHTML=xmlHttp.responseText;
		   
		  }else{
		    alert("Error");
		  }
		}
	  }
	  function deleteJob(jobid){
	     alert("not implement");
	  }
	  function updateJob(jobid){
	     alert("not implement");
	  }

  </script>
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

  <p><strong>��ӭ��,˼�ƹ�˾ </strong></p>
  <p>       
    <input type="submit" name="Submit" value="ע����½" />
  </p>
  <div> 
		<ul id="cmenu"> 
		<li><a href="home.htm">���Ĺ�˾��Ϣ</a></li> 
		<li><a href="about.htm">����ְλ</a></li> 
		<li><a href="products.htm">�༭ְλ</a></li> 
		<li><a href="services.htm">���볡��</a></li> 
		<li><a href="contact.htm">���ؼ�¼</a></li> 
		<li><a href="contact.htm">ѧ���б�</a></li> 
		<li><a href="contact.htm">����</a></li>
		</ul> 
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
	             <div id="jobadd">
			    <h3><span>����ְλ</span></h3>
				<p class="date"><label>ѡ����ҵ:</label>
				  <select id="industry" name="select" onchange="loadFunction();">
				    <option value=0>��ѡ��-------------------------</option>
			      </select>
				</p>
              	<p class="date"><label>ѡ��ְ��:</label>
				  <select id="function" name="select">
				    <option value=0>��ѡ��-------------------------</option>
			      </select>
				</p>
				<p class="date"><label>ѡ��ѧ��:</label>
				  <select id="grade" name="select">
				    <option value="">��ѡ��-------------------------</option>
				    <option value="����">����</option>
				    <option value="˶ʿ">˶ʿ</option>
				    <option value="��ʿ">��ʿ</option>
			      </select>
				</p>
				<p class="date"><label>��������:</label>
				  <select id="workyears" name="select">
				    <option value=0>��ѡ��-------------------------</option>
				    <option value=1>1������</option>
				    <option value=2>2������</option>
			      </select>
				</p>
				<p class="date"><label>����ʡ��:</label>
				  <select id="province" name="select" onchange="loadCity();">
				    <option value="">��ѡ��-------------------------</option>
				    <option name=0 value="�㽭">�㽭</option>
				    <option name=1 value="�㶫">�㶫</option>
				    <option name=2 value="������">������</option>
				    <option name=3 value="�Ϻ���">�Ϻ���(ֱϽ��)</option>
			      </select>
				</p>
				<p class="date"><label>��������:</label>
				  <select id="city" name="select">
				    <option value="">��ѡ��-------------------------</option>
			      </select>
				</p>
				<p class="date"><label>�����Ա�:</label>
				  <select id="sex" name="select">
				    <option value="">��ѡ��-------------------------</option>
				    <option value="��">��</option>
				    <option value="Ů">Ů</option>
			      </select>
				</p>
				<p class="date"><label>��Ƹ����:</label>
				  <input id="number" type="text" />
				</p>
				<p class="date"><label>����Ҫ��:</label>
				  <textarea id="demand" name="textarea">������</textarea>
				</p>
				<p class="date"><label>ְλ����:</label>
				  <textarea id="descript" name="textarea2">������</textarea>
				</p>
				<p class="date"> 
				  <input type="submit" name="Submit2" value="ȷ������" onclick="addJob();"/>
				</p>
				
			 </div>
		    	 <div id="job_added">
		        <h3><span>�����ӵ�ְλ</span></h3>
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
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
      <li><a href="#">Related Link</a></li>
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