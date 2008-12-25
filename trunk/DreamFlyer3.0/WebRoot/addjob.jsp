<%@ page language="java" import="java.util.*,com.dreamflyer.user.Company" pageEncoding="gb2312"%>
<%@   taglib   prefix= "html "   uri= "http://struts.apache.org/tags-html"   %> 
<%@   taglib   prefix= "bean "   uri= "http://struts.apache.org/tags-bean"   %> 
<%@   taglib   prefix= "logic "  uri= "http://struts.apache.org/tags-logic" %> 
<%@   taglib   prefix="tiles"    uri="http://struts.apache.org/tags-tiles" %>
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
<title>SJTU JOB HUNTING HOMEPAGE</title>

<script type="text/javascript">
 var xmlHttp;
 var provinces=new Array();
 provinces[0]=['合肥','芜湖','淮南','马鞍山','淮北','铜陵','安庆','黄山','巢湖'];
 provinces[1]=['北京']; 
 provinces[2]=['重庆'];
  provinces[3]=['福州','厦门','泉州','龙岩'];
    provinces[4]=['兰州','嘉峪关','天水','九泉','庆阳'];
      provinces[5]=['广州','深圳','珠海','东莞','湛江','佛山','阳江','汕头','茂名','中山','韶关'];
        provinces[6]=['柳州','南宁','桂林','北海','梧州','百色'];
          provinces[7]=['贵阳','六盘水','黔南','遵义','安顺'];
            provinces[8]=['海口','三亚'];
              provinces[9]=['秦皇岛','邯郸','保定','张家口','唐山','石家庄'];
                provinces[10]=['哈尔滨','齐齐哈尔','鹤岗','大庆','佳木斯','大兴安岭','黑河','绥化'];
                  provinces[11]=['郑州','开封','洛阳','平顶山','安阳','商丘','信阳','驻马店'];
                    provinces[12]=['武汉','十堰','宜昌','孝感','荆门','黄冈'];
                      provinces[13]=['长沙','株洲','衡阳','湘潭','邵阳','岳阳','张家界','怀化','湘西'];
                        provinces[14]=['呼和浩特','包头','乌海','赤峰','呼伦贝尔','鄂尔多斯'];
                          provinces[15]=['南京','苏州','常州','无锡','徐州','连云港','淮安','镇江','泰州','扬州','南通'];
                            provinces[16]=['南昌','景德镇','九江','萍乡','鹰潭','赣州','上饶'];
                              provinces[17]=['吉林','长春','辽源','通化','白山','延边'];
                                provinces[18]=['沈阳','大连','鞍山','本溪','锦州','丹东','抚顺','营口','葫芦岛'];
                                  provinces[19]=['银川','吴忠'];
                                    provinces[20]=['西宁','海东','玉树','海西','海南'];
                                      provinces[21]=['太原','大同','晋城','临汾'];
                                          provinces[22]=['济南','青岛','淄博','东营','烟台','泰安','威海','日照','德州','滨州'];
                                            provinces[23]=['上海'];
                                              provinces[24]=['成都','攀枝花','德阳','绵阳','内江','宜宾','雅安','巴中'];
                                                provinces[25]=['天津'];
                                                  provinces[26]=['拉萨','昌都','那曲','林芝','日喀则','阿里'];
                                                     provinces[27]=['乌鲁木齐','克拉玛依','吐鲁番','哈密','昌吉','喀什','阿克苏','伊犁'];
                                                     provinces[28]=['昆明','玉溪','红河','文山','西双广纳','大理','丽江'];
                                                     provinces[29]=['杭州','宁波','温州','台州','金华','舟山','绍兴','嘉兴'];
                                                     provinces[30]=['西安','铜川','宝鸡','咸阳','汉中','延安'];
                                                     provinces[31]=['台北','高雄'];
                                                     provinces[32]=['香港'];
                                                     provinces[33]=['澳门'];
                                                     
                                                     
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
		   /*清除下拉框*/
           selector.innerHTML='';
           /*加入加拉框首行*/
           var tip=document.createElement("option");
           tip.setAttribute("value","0");
           tip.appendChild(document.createTextNode("请选择-------------------------"));
		   selector.appendChild(tip);
		   
		    var functions=xmlHttp.responseXML.getElementsByTagName("function");
		  /*加入所有与行业对应的职能*/
		 
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
		   /*清除下拉框*/
           selector2.innerHTML='';
           /*加入加拉框首行*/
           var tip=document.createElement("option");
           tip.setAttribute("value","");
           tip.appendChild(document.createTextNode("请选择-------------------------"));
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
		 
		 /*开始查询*/	 
		 alert("行业"+industryid+"职能"+functionid+"学历"+grade+"年限"+workyears+"城市"+city+"省份"+province+"性别"+sex+"要求"+demand+"描述"+descript+"人数"+num);
		   
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
      function logout(){
       alert("欢迎您的再次光临");
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
  <div id="logo" ><img src="img/logo.png"></div>
  <div id="leftbar"><img src="img/leftbar.gif"></div>
  <div id="rightbar">
   <img src="img/go.gif"/>
    <input name="textfield" type="text"/>
     <img src="img/search.gif"/>
  </div>
  <div id="navBar">
    <ul>
		<li><a href="#"><span>主页</span></a></li>
		<li><a href="#"><span>找工作</span></a></li>
		<li><a href="#"><span>公告新闻</span></a></li>
		<li><a href="#"><span>就业指导</span></a></li>
		<li><a href="#"><span>学生服务</span></a></li>
		<li id="current"><a href="#"><span>公司服务</span></a></li>
		<li><a href="#"><span>资源下载</span></a></li>
		<li><a href="#"><span>关于我们</span></a></li>
    </ul>
   </div>

</div>
<!-- end masthead -->
<div id="content">
 <div id="left">
  <div id="login">
 
 <fieldset>

  <p><strong>欢迎您,<%=((Company)request.getSession().getAttribute("current_user")).getName()%>司 </strong></p>
  <p>       
     <input type="submit" name="Submit" value="注销登陆" onclick="logout();"/>
  </p>
  <div  id="leftnav"> 
		<div class="do">职位管理</div>
		<div class="undo"><html:link page="/field_ad.jsp">场地管理</html:link></div>
		<div class="undo"><html:link page="/getApplyer.jsp">察看学生列表</html:link></div>
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
			    <h3><span>增加职位</span></h3>
				<p class="date"><label>选择行业:</label>
				  <select id="industry" name="select" onchange="loadFunction();">
				    <option value=0>请选择-------------------------</option>
			      </select>
				</p>
              	<p class="date"><label>选择职能:</label>
				  <select id="function" name="select">
				    <option value=0>请选择-------------------------</option>
			      </select>
				</p>
				<p class="date"><label>选择学历:</label>
				  <select id="grade" name="select">
				    <option value="">请选择-------------------------</option>
				    <option value="本科">本科</option>
				    <option value="硕士">硕士</option>
				    <option value="博士">博士</option>
			      </select>
				</p>
				<p class="date"><label>工作年限:</label>
				  <select id="workyears" name="select">
				    <option value=0>请选择-------------------------</option>
				    <option value=1>1年以上</option>
				    <option value=2>2年以上</option>
			      </select>
				</p>
				<p class="date"><label>工作省份:</label>
				  <select id="province" name="select" onchange="loadCity();">
				    <option value="">请选择-------------------------</option>
				    <option name=0 value="安徽">安徽</option>
				    <option name=1 value="北京">北京</option>
				    <option name=2 value="重庆">重庆</option>
				    <option name=3 value="福建">福建</option>
				    <option name=4 value="甘肃">甘肃</option>
				    <option name=5 value="广东">广东</option>
				    <option name=6 value="广西">广西</option>
				    <option name=7 value="贵州">贵州</option>
				    <option name=8 value="海南">海南</option>
				    <option name=9 value="河北">河北</option>
				    <option name=10 value="黑龙江">黑龙江</option>
				    <option name=11 value="河南">河南</option>
				    <option name=12 value="湖北">湖北</option>
				    <option name=13 value="湖南">湖南</option>
				    <option name=14 value="内蒙古">内蒙古</option>
				    <option name=15 value="江苏">江苏</option>
				    <option name=16 value="江西">江西</option>
				    <option name=17 value="吉林">吉林</option>
				    <option name=18 value="辽宁">辽宁</option>
				    <option name=19 value="宁夏">宁夏</option>
				    <option name=20 value="青海">青海</option>
				    <option name=21 value="山西">山西</option>
				    <option name=22 value="山东">山东</option>
				    <option name=23 value="上海">上海</option>
				    <option name=24 value="四川">四川</option>
				    <option name=25 value="天津">天津</option>
				    <option name=26 value="西藏">西藏</option>
				    <option name=27 value="新疆">新疆</option>
				    <option name=28 value="云南">云南</option>
				    <option name=29 value="浙江">浙江</option>
				    <option name=30 value="陕西">陕西</option>
				    <option name=31 value="台湾">台湾</option>
				    <option name=32 value="香港">香港</option>
				    <option name=33 value="澳门">澳门</option>
			      </select>
				</p>
				<p class="date"><label>工作城市:</label>
				  <select id="city" name="select">
				    <option value="">请选择-------------------------</option>
			      </select>
				</p>
				<p class="date"><label>工作性别:</label>
				  <select id="sex" name="select">
				    <option value="">请选择-------------------------</option>
				    <option value="男">男</option>
				    <option value="女">女</option>
			      </select>
				</p>
				<p class="date"><label>招聘人数:</label>
				  <input id="number" type="text" />
				</p>
				<p class="date"><label>其他要求:</label>
				  <textarea id="demand" name="textarea">请输入</textarea>
				</p>
				<p class="date"><label>职位描述:</label>
				  <textarea id="descript" name="textarea2">请输入</textarea>
				</p>
				<p class="date"> 
				  <input type="submit" name="Submit2" value="确认添加" onclick="addJob();"/>
				</p>
				
			 </div>
		    	 <div id="job_added">
		        <h3><span>已添加的职位</span></h3>
			 </div>
		      
    </div>
</div>


 <div id="right">
    <div id="datebar">
	<form>
	<h3>2008年12月25号</h3>
       <h4>(晴天)</h4>
	</form>
  </div>
  <div id="rightlinks">
  <div class="relatedLinks">
    <h3>项目推荐</h3>
    <ul>
      <li><a href="#">基于网络设备远程检测与故障诊断系统</a></li>
      <li><a href="#">快速成型制造系统</a></li>
      <li><a href="#">从马克思主义看我党思想路线</a></li>
      <li><a href="#">微小肺原通道内沸腾特性强化</a></li>
      <li><a href="#">太阳能空调喷射制冷机</a></li>
      <li><a href="#">面向环境感知的中间件支持服务平台</a></li>
    </ul>
  </div>
  <div class="relatedLinks">
    <h3>热门文章</h3>
    <ul>
      <li><a href="#">08年GRE内地考生增3成</a></li>
      <li><a href="#">明年商务英语证书考试日期排定</a></li>
      <li><a href="#">[劳动法|劳动合同]试用期结束不转正怎么办？</a></li>
      <li><a href="#">新法新政推动九成以上企业改革</a></li>
      <li><a href="#">岗位撤销合同期未到怎么补偿？</a></li>
      <li><a href="#">身不由己的“职场八卦”</a></li>
    </ul>
  </div>
 <div class="relatedLinks">
    <h3>友情链接</h3>
    <ul>
      <li><a href="#">上海交通大学招就办</a></li>
      <li><a href="#">前程无忧</a></li>
      <li><a href="#">中华英才网</a></li>
      <li><a href="#">智联招聘</a></li>
      <li><a href="#">58同城网</a></li>
      <li><a href="#">上海招聘网</a></li>
    </ul>
  </div>
 </div> 
</div>
</div>
<div id="siteInfo"> 
    <a href="#">网站导航</a> 
	<a href="#">关于我们</a> 
	<a href="#">隐私保护</a> 
	<a href="#">条款声明</a>
	<a href="#">置顶</a> 
	&copy;2008  Dof, All rights reserved</div>
</div>
</body>
</html>
