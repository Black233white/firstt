<%@ page contentType="text/html";language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>简单的网上试题自动评测——评测</title>
    
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
       
        <% String s1 = request.getParameter("r1");
           if (s1 != null) {
              out.println("一、解答为:2+3=" + s1 + "   ");
              if (s1.equals("5")) out.println("正确！" + "<br>");
            else out.println("错误！" + "<br>");
           } else out.println("一、没有解答！");
           out.println("---------------------------<br>");
           String[] s21 = request.getParameterValues("c1");
           if (s21 != null) {
            out.println("二、解答为:偶数有：");
            for (int i = 0; i < s21.length; ++i) {
               out.println(s21[i] + "   ");
            }
            if (s21.length == 2 && s21[0].equals("2") && s21[1].equals("4"))
               out.println("正确！" + "<br>");
            else
               out.println("错误！" + "<br>");
           } else out.println("二、没有解答！<br>");
           out.println("---------------------------<br>");
           String[] s31 = request.getParameterValues("list1");
           if (s31 != null) {
            out.println("三、解答为: 动态网页有：");
            for (int i = 0; i < s31.length; ++i) {
               out.println(s31[i] + "   ");
            }
            if (s31.length == 3 && s31[0].equals("asp") && s31[1].equals("php")
                  && s31[2].equals("jsp"))  out.println("正确！" + "<br>");
            else out.println("错误！" + "<br>");
           } else out.println("三、没有解答！");
           out.println("---------------------------<br>");
           String s4 = request.getParameter("list5");
           if (s4 != null) {
              out.println("四、解答为:服务器端的组件是有：");
            out.println(s4 + "    ");
            if (s4 != null && s4.equals("servlet"))  out.println("正确！" + "<br>");
            else  out.println("错误！" + "<br>");
           } else  out.println("四、没有解答！");
           out.println("---------------------------<br>");
           String s5 = request.getParameter("text1");
           if (s5 != "") {//注意这里是“”，因为就算没输入，也会传一个空字符，不是NULL导致“没有解答”失效
              out.println("五、解答为: ");
            out.println(s5 + "   ");
            if (s5 != "" && s5.equals("request")) out.println("正确！" + "<br>");
            else out.println("错误！" + "<br>");
           } else out.println("五、没有解答！!!!<br>");
           out.println("---------------------------<br>");
        %>
  </body>
</html>
