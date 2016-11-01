<%@ page language="java" pageEncoding="UTF8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta name="Description" content="Information architecture, Web Design, Web Standards." />
<meta name="Keywords" content="your, keywords" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="Distribution" content="Global" />
<meta name="Robots" content="index,follow" />

<link rel="stylesheet" href="images/Envision.css" type="text/css" />
<script type="text/javascript">
	function  time(){
		var now = new Date();
		var year= now.getFullYear();
		var month= now.getMonth();
		var day = now.getDate();
		document.getElementById("time").innerHTML=year+"年"+(month+1)+"月"+day+(日);
	}
</script>


<title>Fictio</title>
</head>
  
  <body onload="time()">
    <div id="wrap">
    	<div id="header">
    	<h1 id="logo-text"><a href="/MyWeb/Servlet?page=index">Fictio</a></h1>		
			<p id="slogan">竹杖芒鞋轻胜马,谁怕?一蓑烟雨任平生</p>
			<div id="header-links">
			<p>
				<a href="/MyWeb/Servlet?page=index">主页</a> | 
				<a href="/MyWeb/Servlet?page=contact">联系我</a> | 
				<a href="#">位置地图</a>			
			</p>		
			</div>
		</div>
		<div id="menu">
			<ul>
				<li id="current"><a href="/MyWeb/Servlet?page=index">主页</a></li>
				<li><a href="/MyWeb/Servlet?page=collection">收藏</a></li>
				<li><a href="#">下载</a></li>
				<li><a href="/MyWeb/Servlet?page=contact">联系我</a></li>
				<li><a href="sample.jsp">测试模版</a></li>
				<li class="last"><a href="#">关于</a></li>		
			</ul>
		</div>
		
		<div id="content-wrap">
			
			<div id="sidebar">
				<h3>搜索</h3>	
				<form action="#" class="searchform">
					<p>
					<input name="search_query" class="textbox" type="text" />
  					<input name="search" class="button" value="试试看" type="submit" />
					</p>			
				</form>
				<h3>常用链接</h3>
				<ul class="sidemenu">				
					<li><a href="index.html">我的随笔</a></li>
					<li><a href="#TemplateInfo">我的收藏</a></li>
					<li><a href="#SampleTags">我的标签</a></li>
					<li><a href="#" title="Web Templates">更多链接</a></li>
				</ul>
				<h3>常用外链</h3>
				<ul class="sidemenu">
					<li><a href="https://fictio.tuchong.com/">图虫个人主页</a></li>
					<li><a href="http://www.alistapart.com">Alistapart</a></li>					
				   	<li><a href="#">CSS Mania</a></li>
				</ul>
			</div>
		
			<div id="main">
				<!--内容插入,根据条件选择合适页面插入 -->
				<c:if test="${page.equals('index')}"><jsp:include page="index.jsp" /></c:if>
				<c:if test="${page.equals('contact')}"><jsp:include page="contact.jsp" /></c:if>
				<c:if test="${page.equals('content_1')}"><jsp:include page="content_1.jsp" /></c:if>
				<c:if test="${page.equals('content_2')}"><jsp:include page="content_2.jsp" /></c:if>
				<c:if test="${page.equals('message')}"><jsp:include page="message.jsp" /></c:if>
				<c:if test="${page.equals('collection')}"><jsp:include page="collection.jsp" /></c:if>
				
    		</div>		
		</div>
		
		<div id="footer" >
			<p>&copy; 2016 <strong>Ficito</strong></p>
		</div> 
    </div>
  </body>
</html>
