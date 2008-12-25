<%@ page contentType="text/html; charset=gbk" language="java" import="java.sql.*" errorPage="" %>
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
<title>searchjob.jsp</title>
<script type="text/javascript">
 var xmlHttp;
 var provinces=new Array();
 provinces[0]=['�Ϸ�','�ߺ�','����','��ɽ','����','ͭ��','����','��ɽ','����'];
 provinces[1]=['����']; 
 provinces[2]=['����'];
  provinces[3]=['����','����','Ȫ��','����'];
    provinces[4]=['����','������','��ˮ','��Ȫ','����'];
      provinces[5]=['����','����','�麣','��ݸ','տ��','��ɽ','����','��ͷ','ï��','��ɽ','�ع�'];
        provinces[6]=['����','����','����','����','����','��ɫ'];
          provinces[7]=['����','����ˮ','ǭ��','����','��˳'];
            provinces[8]=['����','����'];
              provinces[9]=['�ػʵ�','����','����','�żҿ�','��ɽ','ʯ��ׯ'];
                provinces[10]=['������','�������','�׸�','����','��ľ˹','���˰���','�ں�','�绯'];
                  provinces[11]=['֣��','����','����','ƽ��ɽ','����','����','����','פ���'];
                    provinces[12]=['�人','ʮ��','�˲�','Т��','����','�Ƹ�'];
                      provinces[13]=['��ɳ','����','����','��̶','����','����','�żҽ�','����','����'];
                        provinces[14]=['���ͺ���','��ͷ','�ں�','���','���ױ���','������˹'];
                          provinces[15]=['�Ͼ�','����','����','����','����','���Ƹ�','����','��','̩��','����','��ͨ'];
                            provinces[16]=['�ϲ�','������','�Ž�','Ƽ��','ӥ̶','����','����'];
                              provinces[17]=['����','����','��Դ','ͨ��','��ɽ','�ӱ�'];
                                provinces[18]=['����','����','��ɽ','��Ϫ','����','����','��˳','Ӫ��','��«��'];
                                  provinces[19]=['����','����'];
                                    provinces[20]=['����','����','����','����','����'];
                                      provinces[21]=['̫ԭ','��ͬ','����','�ٷ�'];
                                          provinces[22]=['����','�ൺ','�Ͳ�','��Ӫ','��̨','̩��','����','����','����','����'];
                                            provinces[23]=['�Ϻ�'];
                                              provinces[24]=['�ɶ�','��֦��','����','����','�ڽ�','�˱�','�Ű�','����'];
                                                provinces[25]=['���'];
                                                  provinces[26]=['����','����','����','��֥','�տ���','����'];
                                                     provinces[27]=['��³ľ��','��������','��³��','����','����','��ʲ','������','����'];
                                                     provinces[28]=['����','��Ϫ','���','��ɽ','��˫����','����','����'];
                                                     provinces[29]=['����','����','����','̨��','��','��ɽ','����','����'];
                                                     provinces[30]=['����','ͭ��','����','����','����','�Ӱ�'];
                                                     provinces[31]=['̨��','����'];
                                                     provinces[32]=['���'];
                                                     provinces[33]=['����'];
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
		
		function doSearch(){
		 var industryid = document.getElementById("industry").value;
		 var functionid= document.getElementById("function").value;
		 var grade= document.getElementById("grade").value;
		 var workyears= document.getElementById("workyears").value;
		 var province=document.getElementById("province").value;
		 var city=document.getElementById("city").value;
		 var sex=document.getElementById("sex").value;
		 if(industryid==0&&functionid==0&&grade==""&&workyears==0&&province==""&&city=="") return;
		 
		 /*��ʼ��ѯ*/	 
		 alert("��ҵ"+industryid+"ְ��"+functionid+"ѧ��"+grade+"����"+workyears+"����"+city+"ʡ��"+province+"�Ա�"+sex);
		 /* add by hsqfire */
		 sex = eco(sex);
		 grade = eco(grade);
		 province = eco(province);
		 city = eco(city);
		 /* above */
		   createXmlHttp();
		  xmlHttp.onreadystatechange=showResult;
		  xmlHttp.open("GET","searchjobs.do?sex="+sex+"&industryid="+industryid+"&functionid="+functionid+"&workyears="+workyears+"&grade="+grade+"&city="+city+"&province="+province+"&ts="+new Date().getTime(),true);
		  xmlHttp.send(null);
		
		}
		function showResult(){
		if(xmlHttp.readyState==4){
		  if(xmlHttp.status==200){
		  document.getElementById("jobresult").innerHTML=xmlHttp.responseText;
		   
		  }else{
		    alert("Error");
		  }
		}
	  }
	  function applyJob(jobid){
	      var id=jobid;
	      alert("�������ְλid="+id);
          window.location='applyjob.do?jobid='+id+'&ts='+new Date().getTime();
	  }
      function logout(){
       alert("��ӭ�����ٴι���");
       window.location='logout.do?&ts='+new Date().getTime(); 
      }
  </script>
<link rel="stylesheet" href="index.css" type="text/css" />
<link rel="stylesheet" href="menu.css" type="text/css" />
<link rel="stylesheet" href="login.css" type="text/css" />
<link rel="stylesheet" href="jobresult.css" type="text/css" />
<link rel="stylesheet" href="jobsearch.css" type="text/css" />
<link rel="stylesheet" href="info.css" type="text/css" />
<link rel="stylesheet" href="leftnav.css" type="text/css" />
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
		<li id="current"><a href="#"><span>ѧ������</span></a></li>
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
<p><strong>��ӭ��, <bean:write name="current_user" property="name" scope="session"/>ͬѧ </strong></p>
<table width="195" height="204" border="0">
  <tr>
    <td width="23" height="198">&nbsp;</td>
    <td width="128"><img src="photo/<bean:write name="current_user" property="photo" scope="session"/>.jpg" width="128" height="200" /></td>
    <td width="22">&nbsp;</td>
  </tr>
</table>
<p>&nbsp;</p>
<p>       
    <input type="submit" name="Submit" value="ע����½" onclick="logout();"/>
  </p>
  <div  id="leftnav"> 
		<div class="do">�ҹ���</div>
		<div class="undo"><html:link action="getmyapplyment.do">�����ղؼ�</html:link></div> 
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
   <div id="jobsearch">
	            <div id="jobselect">
			    <h3><span>�ҹ���</span></h3>
				<p class="date"><label>ѡ����ҵ:</label>
				  <select id="industry" name="select" onchange="loadFunction();">
				    <option value="0">��ѡ��-------------------------</option>
			      </select>
				</p>
              	<p class="date"><label>ѡ��ְ��:</label>
				  <select id="function" name="select">
				    <option value="0">��ѡ��-------------------------</option>
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
				    <option name=0 value="����">����</option>
				    <option name=1 value="����">����</option>
				    <option name=2 value="����">����</option>
				    <option name=3 value="����">����</option>
				    <option name=4 value="����">����</option>
				    <option name=5 value="�㶫">�㶫</option>
				    <option name=6 value="����">����</option>
				    <option name=7 value="����">����</option>
				    <option name=8 value="����">����</option>
				    <option name=9 value="�ӱ�">�ӱ�</option>
				    <option name=10 value="������">������</option>
				    <option name=11 value="����">����</option>
				    <option name=12 value="����">����</option>
				    <option name=13 value="����">����</option>
				    <option name=14 value="���ɹ�">���ɹ�</option>
				    <option name=15 value="����">����</option>
				    <option name=16 value="����">����</option>
				    <option name=17 value="����">����</option>
				    <option name=18 value="����">����</option>
				    <option name=19 value="����">����</option>
				    <option name=20 value="�ຣ">�ຣ</option>
				    <option name=21 value="ɽ��">ɽ��</option>
				    <option name=22 value="ɽ��">ɽ��</option>
				    <option name=23 value="�Ϻ�">�Ϻ�</option>
				    <option name=24 value="�Ĵ�">�Ĵ�</option>
				    <option name=25 value="���">���</option>
				    <option name=26 value="����">����</option>
				    <option name=27 value="�½�">�½�</option>
				    <option name=28 value="����">����</option>
				    <option name=29 value="�㽭">�㽭</option>
				    <option name=30 value="����">����</option>
				    <option name=31 value="̨��">̨��</option>
				    <option name=32 value="���">���</option>
				    <option name=33 value="����">����</option>
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
				<p class="date"> 
				  <input type="submit" name="Submit2" value="��ʼ����" onclick="doSearch();"/>
				</p>
			    </div>
   	    <div id="jobresult">
		        <h3><span>�������</span></h3>
		  
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
