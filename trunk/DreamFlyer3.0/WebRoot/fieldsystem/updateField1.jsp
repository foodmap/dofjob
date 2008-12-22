<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<html> 
	<head>
		<title>更改场地</title>
	</head>
	<body>
<html:form action="/updateField">
选择场地: <html:select property="field_id" value="${param.ufid}">
<html:option value="${param.ufid}"><%=new String((request.getParameter("address")).getBytes("ISO-8859-1"),"gb2312")%></html:option>
</html:select><html:errors property="field_id"/><br/>日期：<br/>
年：<html:select property="start_year">
    <html:option value="2008">2008</html:option>
</html:select><html:errors property = "start_year"/><br/>
月：<html:select property="start_month"  >    
	<html:option value = "1">一月</html:option>
	<html:option value = "2">二月</html:option>
	<html:option value = "3">三月</html:option>
	<html:option value = "4">四月</html:option>
	<html:option value = "5">五月</html:option>
	<html:option value = "6">六月</html:option>
	<html:option value = "7">七月</html:option>
	<html:option value = "8">八月</html:option>
	<html:option value = "9">九月</html:option>
	<html:option value = "10">十月</html:option>
	<html:option value = "11">十一月</html:option>
	<html:option value = "12">十二月</html:option>
</html:select><html:errors property="start_month"/><br/>
日：<html:select property="start_day" >
	<html:option value="1">1</html:option>
	<html:option value="2">2</html:option>
	<html:option value="3">3</html:option>
	<html:option value="4">4</html:option>
	<html:option value="5">5</html:option>
	<html:option value="6">6</html:option>
	<html:option value="7">7</html:option>
	<html:option value="8">8</html:option>
	<html:option value="9">9</html:option>
	<html:option value="10">10</html:option>
	<html:option value="11">11</html:option>
	<html:option value="12">12</html:option>
	<html:option value="13">13</html:option>
	<html:option value="14">14</html:option>
	<html:option value="15">15</html:option>
	<html:option value="16">16</html:option>
	<html:option value="17">17</html:option>
	<html:option value="18">18</html:option>
	<html:option value="19">19</html:option>
	<html:option value="20">20</html:option>
	<html:option value="21">21</html:option>
	<html:option value="22">22</html:option>
	<html:option value="23">23</html:option>
	<html:option value="24">24</html:option>
	<html:option value="25">25</html:option>
	<html:option value="26">26</html:option>
	<html:option value="27">27</html:option>
	<html:option value="28">28</html:option>
	<html:option value="29">29</html:option>
	<html:option value="30">30</html:option>
	<html:option value="31">31</html:option>
</html:select><html:errors property="start_day"/><br/>开始时间：<br/>
时：<html:text property="start_hour"></html:text><html:errors property="start_hour"/><br/>
分：<html:text property="start_minute"></html:text><html:errors property="start_minute"/><br/>

结束时间：<br/>
时：<html:text property="end_hour"></html:text><html:errors property="end_hour"/><br/>
分：<html:text property="end_minute"></html:text><html:errors property="end_minute"/><br/>
<html:submit>确定</html:submit><html:reset>重置</html:reset><html:cancel>取消</html:cancel>
</html:form>
<script language="JavaScript">
<!-- Begin
//set todays date
Now = new Date();
NowDay = Now.getDate();
NowMonth = Now.getMonth();
NowYear = Now.getYear();
if (NowYear < 2000) NowYear += 1900; //for Netscape

//function for returning how many days there are in a month including leap years
function DaysInMonth(WhichMonth, WhichYear)
{
  var DaysInMonth = 31;
  if (WhichMonth == "Apr" || WhichMonth == "Jun" || WhichMonth == "Sep" || WhichMonth == "Nov") DaysInMonth = 30;
  if (WhichMonth == "Feb"  &&  (WhichYear/4) != Math.floor(WhichYear/4))	DaysInMonth = 28;
  if (WhichMonth == "Feb"  &&  (WhichYear/4) == Math.floor(WhichYear/4))	DaysInMonth = 29;
  return DaysInMonth;
}

//function to change the available days in a months
function ChangeOptionDays(Which)
{  
  DaysObject = document.forms[1].elements[2];
  MonthObject = document.forms[1].elements[1];
  YearObject = document.forms[1].elements[0];

  Month = MonthObject.options[MonthObject.selectedIndex].value;
  Year = YearObject.options[YearObject.selectedIndex].value;
  DaysForThisSelection = DaysInMonth(Month, Year);
  CurrentDaysInSelection = DaysObject.options.length;
  if (CurrentDaysInSelection > DaysForThisSelection)
  {
    for (i=0; i<(CurrentDaysInSelection-DaysForThisSelection); i++)
    {
      DaysObject.options[DaysObject.options.length - 1] = null
    }
  }
  if (DaysForThisSelection > CurrentDaysInSelection)
  {
    for (i=0; i<(DaysForThisSelection-CurrentDaysInSelection); i++)
    {
      NewOption = new Option(DaysObject.options.length + 1);
      DaysObject.add(NewOption);
    }
  }
    if (DaysObject.selectedIndex < 0) DaysObject.selectedIndex == 0;
}

//function to set options to today
function SetToToday(Which)
{
  DaysObject = eval("document.Form1." + Which + "Day");
  MonthObject = eval("document.Form1." + Which + "Month");
  YearObject = eval("document.Form1." + Which + "Year");

  YearObject[0].selected = true;
  MonthObject[NowMonth].selected = true;

  ChangeOptionDays(Which);

  DaysObject[NowDay-1].selected = true;
}

//function to write option years plus x
function WriteYearOptions(YearsAhead)
{
  line = "";
  for (i=0; i<YearsAhead; i++)
  {
   
  }
  return line;
}
//  End -->
</script>
</body>	
</html>

